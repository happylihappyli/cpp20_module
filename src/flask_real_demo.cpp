// Flask Real HTTP Server - Real HTTP Server Implementation
#include <iostream>
#include <thread>
#include <sstream>
#include <vector>
#include <winsock2.h>
#include <ws2tcpip.h>
import funny;

#pragma comment(lib, "ws2_32.lib")

using namespace std;
using namespace funny;

class RealFlaskServer {
public:
    RealFlaskServer() {
        // Initialize Winsock
        WSADATA wsaData;
        int result = WSAStartup(MAKEWORD(2, 2), &wsaData);
        if (result != 0) {
            throw funny::MyException("WSAStartup failed: " + funny::str(result));
        }
    }
    
    ~RealFlaskServer() {
        if (server_socket != INVALID_SOCKET) {
            closesocket(server_socket);
        }
        WSACleanup();
    }
    
    void get(const string& path, function<string()> handler) {
        routes[path] = handler;
    }
    
    void run(int port) {
        funny::print("Starting Flask Real HTTP Server...");
        funny::print("Server will listen on http://localhost:" + funny::str(port));
        
        // Create socket
        server_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (server_socket == INVALID_SOCKET) {
            throw funny::MyException("Socket creation failed: " + funny::str(WSAGetLastError()));
        }
        
        // Set address reuse
        int opt = 1;
        setsockopt(server_socket, SOL_SOCKET, SO_REUSEADDR, (char*)&opt, sizeof(opt));
        
        // Bind address
        sockaddr_in server_addr{};
        server_addr.sin_family = AF_INET;
        server_addr.sin_addr.s_addr = INADDR_ANY;
        server_addr.sin_port = htons(port);
        
        if (bind(server_socket, (sockaddr*)&server_addr, sizeof(server_addr)) == SOCKET_ERROR) {
            throw funny::MyException("Bind failed: " + funny::str(WSAGetLastError()));
        }
        
        // Start listening
        if (listen(server_socket, SOMAXCONN) == SOCKET_ERROR) {
            throw funny::MyException("Listen failed: " + funny::str(WSAGetLastError()));
        }
        
        funny::print("Server started successfully!");
        funny::print("Registered routes:");
        for (const auto& route_pair : routes) {
            funny::print("  GET " + route_pair.first);
        }
        funny::print("");
        funny::print("Server is running... Press Ctrl+C to stop");
        funny::print("You can now open http://localhost:" + funny::str(port) + " in your browser");
        
        // Main loop
        while (true) {
            sockaddr_in client_addr{};
            int client_addr_len = sizeof(client_addr);
            
            SOCKET client_socket = accept(server_socket, (sockaddr*)&client_addr, &client_addr_len);
            if (client_socket == INVALID_SOCKET) {
                funny::print("Accept failed: " + funny::str(WSAGetLastError()));
                continue;
            }
            
            // Handle client request
            thread([this, client_socket]() {
                handle_client(client_socket);
            }).detach();
        }
    }
    
private:
    SOCKET server_socket = INVALID_SOCKET;
    map<string, function<string()>> routes;
    
    void handle_client(SOCKET client_socket) {
        try {
            // Read request
            char buffer[4096];
            int bytes_received = recv(client_socket, buffer, sizeof(buffer) - 1, 0);
            if (bytes_received <= 0) {
                closesocket(client_socket);
                return;
            }
            
            buffer[bytes_received] = '\0';
            string request(buffer);
            
            // Parse request
            string method, path, version;
            istringstream iss(request);
            iss >> method >> path >> version;
            
            // Remove query parameters from path
            size_t query_pos = path.find('?');
            if (query_pos != string::npos) {
                path = path.substr(0, query_pos);
            }
            
            funny::print("Request: " + method + " " + path);
            
            // Generate response
            string response;
            if (method == "GET" && routes.find(path) != routes.end()) {
                string content = routes[path]();
                string content_type = "text/html; charset=utf-8";
                
                // Check if JSON
                if (content.find("{") == 0 || content.find("[") == 0) {
                    content_type = "application/json; charset=utf-8";
                }
                
                response = "HTTP/1.1 200 OK\r\n";
                response += "Content-Type: " + content_type + "\r\n";
                response += "Content-Length: " + funny::str(static_cast<long long>(content.length())) + "\r\n";
                response += "Connection: close\r\n";
                response += "\r\n";
                response += content;
            } else {
                // 404 Not Found
                string content = "<html><body><h1>404 Not Found</h1><p>The requested path was not found.</p></body></html>";
                response = "HTTP/1.1 404 Not Found\r\n";
                response += "Content-Type: text/html; charset=utf-8\r\n";
                response += "Content-Length: " + funny::str(static_cast<long long>(content.length())) + "\r\n";
                response += "Connection: close\r\n";
                response += "\r\n";
                response += content;
            }
            
            // Send response
            send(client_socket, response.c_str(), response.length(), 0);
            
        } catch (const funny::MyException& e) {
            funny::print("Error handling client: " + string(e.what()));
        }
        
        closesocket(client_socket);
    }
};

int main() {
    try {
        RealFlaskServer app;
        
        // Home route
        app.get("/", []() {
            return string("<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"UTF-8\">\n    <title>Flask C++ Real Server</title>\n    <style>\n        body { font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5; }\n        .container { max-width: 800px; margin: 0 auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }\n        h1 { color: #333; border-bottom: 3px solid #007acc; padding-bottom: 10px; }\n        .feature { background: #e8f4fd; padding: 15px; margin: 10px 0; border-radius: 5px; border-left: 4px solid #007acc; }\n        .links { margin-top: 30px; }\n        .links a { display: inline-block; margin: 10px 15px 10px 0; padding: 10px 20px; background: #007acc; color: white; text-decoration: none; border-radius: 5px; }\n        .links a:hover { background: #005a9e; }\n    </style>\n</head>\n<body>\n    <div class=\"container\">\n        <h1>Flask C++ Real HTTP Server</h1>\n        <p>Welcome to the <strong>real</strong> Flask C++ HTTP server! This is not a simulation - it's a fully functional web server built with C++20 modules.</p>\n        \n        <div class=\"feature\">\n            <h3>Real HTTP Server</h3>\n            <p>Built with Windows Socket API, handling real HTTP requests and responses.</p>\n        </div>\n        \n        <div class=\"feature\">\n            <h3>Route System</h3>\n            <p>Supports multiple routes with different content types (HTML, JSON).</p>\n        </div>\n        \n        <div class=\"feature\">\n            <h3>C++20 Modules</h3>\n            <p>Leverages modern C++20 module system for clean architecture.</p>\n        </div>\n        \n        <div class=\"links\">\n            <h3>Try these links:</h3>\n            <a href=\"/hello\">Greeting Page</a>\n            <a href=\"/api/data\">JSON API</a>\n            <a href=\"/nonexistent\">404 Test</a>\n        </div>\n        \n        <p><em>Server is running on port 8080. You can access it from any browser!</em></p>\n    </div>\n</body>\n</html>");
        });
        
        // Hello route
        app.get("/hello", []() {
            return string("<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"UTF-8\">\n    <title>Hello from Flask C++</title>\n    <style>\n        body { font-family: Arial, sans-serif; margin: 40px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; min-height: 100vh; }\n        .container { max-width: 600px; margin: 0 auto; text-align: center; padding: 50px 30px; }\n        h1 { font-size: 3em; margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0,0,0,0.3); }\n        p { font-size: 1.2em; margin: 20px 0; }\n        .back-link { display: inline-block; margin-top: 30px; padding: 12px 25px; background: rgba(255,255,255,0.2); color: white; text-decoration: none; border-radius: 25px; border: 2px solid white; }\n        .back-link:hover { background: white; color: #667eea; }\n    </style>\n</head>\n<body>\n    <div class=\"container\">\n        <h1>Hello, World!</h1>\n        <p>Greetings from the Flask C++ real HTTP server!</p>\n        <p>This page is served by a genuine HTTP server written in C++ using Windows Socket API.</p>\n        <a href=\"/\" class=\"back-link\">Back to Home</a>\n    </div>\n</body>\n</html>");
        });
        
        // API route
        app.get("/api/data", []() {
            return string("{\n    \"message\": \"Hello from Flask C++ Real Server!\",\n    \"status\": \"success\",\n    \"server_info\": {\n        \"name\": \"Flask C++ Real HTTP Server\",\n        \"version\": \"1.0.0\",\n        \"technology\": \"C++20 Modules + Windows Socket API\",\n        \"features\": [\n            \"Real HTTP Server\",\n            \"Multi-threaded Request Handling\",\n            \"Route System\",\n            \"JSON and HTML Responses\",\n            \"Modern C++ Architecture\"\n        ]\n    },\n    \"timestamp\": \"2024-01-20T12:00:00Z\",\n    \"endpoints\": {\n        \"/\": \"Home page with server information\",\n        \"/hello\": \"Greeting page with styled content\",\n        \"/api/data\": \"This JSON API endpoint\"\n    }\n}");
        });
        
        // Start server
        app.run(8080);
        
    } catch (const funny::MyException& e) {
        funny::print("Server error: " + string(e.what()));
        funny::print("Press any key to exit...");
        cin.get();
        return 1;
    }
    
    return 0;
}