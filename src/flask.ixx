module;

#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <algorithm>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#endif

export module flask;

using namespace std;

export namespace flask {
    // Request class
    class Request {
    public:
        string method;
        string path;
        string query_string;
        string body;
        
        Request() = default;
    };
    
    // Response class
    class Response {
    public:
        string body;
        int status_code = 200;
        
        Response() = default;
        
        void set_html(const string& html) {
            body = html;
        }
        
        void set_html_utf8(const char8_t* utf8_html) {
            body = string(reinterpret_cast<const char*>(utf8_html));
        }
        
        void set_json(const string& json) {
            body = json;
        }
    };
    
    // Simple route handler function pointer
    typedef Response (*RouteHandler)(const Request&);
    
    // Simple route structure
    struct Route {
        string path;
        RouteHandler handler;
        
        Route(const string& p, RouteHandler h) : path(p), handler(h) {}
    };
    
    class Flask {
    private:
        string app_name;
        vector<Route> routes;
        
        string handle_request(const string& request) {
            // Simple HTTP request parsing
            size_t method_end = request.find(' ');
            size_t path_end = request.find(' ', method_end + 1);
            
            if (method_end == string::npos || path_end == string::npos) {
                return "HTTP/1.1 400 Bad Request\r\n\r\nBad Request";
            }
            
            string method = request.substr(0, method_end);
            string full_path = request.substr(method_end + 1, path_end - method_end - 1);
            
            // Remove query parameters from path
            string path = full_path;
            size_t query_pos = full_path.find('?');
            if (query_pos != string::npos) {
                path = full_path.substr(0, query_pos);
            }
            
            Request req;
            req.method = method;
            req.path = path;
            
            // Find matching route
            for (size_t i = 0; i < routes.size(); ++i) {
                if (routes[i].path == path) {
                    Response resp = routes[i].handler(req);
                    return "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\n\r\n" + resp.body;
                }
            }
            
            // Default 404 response
            return "HTTP/1.1 404 Not Found\r\nContent-Type: text/html; charset=utf-8\r\n\r\n<h1>404 Not Found</h1><p>The requested URL was not found on this server.</p>";
        }
        
    public:
        Flask(const string& name = "Flask App") : app_name(name) {
#ifdef _WIN32
            WSADATA wsaData;
            WSAStartup(MAKEWORD(2, 2), &wsaData);
#endif
        }
        
        ~Flask() {
#ifdef _WIN32
            WSACleanup();
#endif
        }
        
        void get(const string& pattern, RouteHandler handler) {
            routes.push_back(Route(pattern, handler));
        }
        
        void run(int port = 5000, bool debug = false) {
            cout << "Starting Flask server on port " << port << "..." << endl;
            cout << "Debug mode: " << (debug ? "ON" : "OFF") << endl;
            cout << "Registered routes: " << routes.size() << endl;
            
            if (debug) {
                cout << "Available routes:" << endl;
                for (size_t i = 0; i < routes.size(); ++i) {
                    cout << "  GET " << routes[i].path << endl;
                }
            }
            
            // Create socket
#ifdef _WIN32
            SOCKET server_socket = socket(AF_INET, SOCK_STREAM, 0);
            if (server_socket == INVALID_SOCKET) {
                cout << "Error creating socket: " << WSAGetLastError() << endl;
                return;
            }
#else
            int server_socket = socket(AF_INET, SOCK_STREAM, 0);
            if (server_socket < 0) {
                cout << "Error creating socket" << endl;
                return;
            }
#endif
            
            // Set socket options
            int opt = 1;
#ifdef _WIN32
            setsockopt(server_socket, SOL_SOCKET, SO_REUSEADDR, (char*)&opt, sizeof(opt));
#else
            setsockopt(server_socket, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
#endif
            
            // Bind socket
            sockaddr_in server_addr;
            server_addr.sin_family = AF_INET;
            server_addr.sin_addr.s_addr = INADDR_ANY;
            server_addr.sin_port = htons(port);
            
            if (bind(server_socket, (sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
                cout << "Error binding socket to port " << port << endl;
#ifdef _WIN32
                closesocket(server_socket);
#else
                close(server_socket);
#endif
                return;
            }
            
            // Listen for connections
            if (listen(server_socket, 5) < 0) {
                cout << "Error listening on socket" << endl;
#ifdef _WIN32
                closesocket(server_socket);
#else
                close(server_socket);
#endif
                return;
            }
            
            cout << "Flask server is running on http://localhost:" << port << endl;
            cout << "Press Ctrl+C to stop the server." << endl;
            
            // Accept and handle connections
            while (true) {
                sockaddr_in client_addr;
#ifdef _WIN32
                int client_len = sizeof(client_addr);
                SOCKET client_socket = accept(server_socket, (sockaddr*)&client_addr, &client_len);
                if (client_socket == INVALID_SOCKET) {
                    if (debug) cout << "Error accepting connection" << endl;
                    continue;
                }
#else
                socklen_t client_len = sizeof(client_addr);
                int client_socket = accept(server_socket, (sockaddr*)&client_addr, &client_len);
                if (client_socket < 0) {
                    if (debug) cout << "Error accepting connection" << endl;
                    continue;
                }
#endif
                
                // Read request
                char buffer[4096] = {0};
#ifdef _WIN32
                int bytes_read = recv(client_socket, buffer, sizeof(buffer) - 1, 0);
#else
                ssize_t bytes_read = recv(client_socket, buffer, sizeof(buffer) - 1, 0);
#endif
                
                if (bytes_read > 0) {
                    string request(buffer, bytes_read);
                    if (debug) {
                        cout << "Received request:" << endl << request << endl;
                    }
                    
                    // Handle request and send response
                    string response = handle_request(request);
                    
#ifdef _WIN32
                    send(client_socket, response.c_str(), (int)response.length(), 0);
#else
                    send(client_socket, response.c_str(), response.length(), 0);
#endif
                    
                    if (debug) {
                        cout << "Sent response: " << response.substr(0, response.find("\r\n\r\n")) << endl;
                    }
                }
                
                // Close client connection
#ifdef _WIN32
                closesocket(client_socket);
#else
                close(client_socket);
#endif
            }
            
            // Clean up
#ifdef _WIN32
            closesocket(server_socket);
#else
            close(server_socket);
#endif
        }
    };
}

// Export the main classes
export using flask::Flask;
export using flask::Request;
export using flask::Response;
export using flask::RouteHandler;