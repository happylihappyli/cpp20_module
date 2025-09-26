#pragma once
#include <string>
#include <functional>
#include <map>
#include <thread>
#include <iostream>
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

namespace flask {

class Request {
public:
    std::string method;
    std::string path;
};

class Response {
public:
    Response() = default;
    void set_html(const std::string& html) {
        body = html;
    }
    std::string body;
};

using RouteHandler = std::function<Response(const Request&)>;

class Flask {
private:
    std::string app_name;
    std::map<std::string, RouteHandler> routes;
    
    std::string handle_request(const std::string& request) {
        // Simple HTTP request parsing
        size_t method_end = request.find(' ');
        size_t path_end = request.find(' ', method_end + 1);
        
        if (method_end == std::string::npos || path_end == std::string::npos) {
            return "HTTP/1.1 400 Bad Request\r\n\r\nBad Request";
        }
        
        std::string method = request.substr(0, method_end);
        std::string full_path = request.substr(method_end + 1, path_end - method_end - 1);
        
        // Remove query parameters from path
        std::string path = full_path;
        size_t query_pos = full_path.find('?');
        if (query_pos != std::string::npos) {
            path = full_path.substr(0, query_pos);
        }
        
        Request req;
        req.method = method;
        req.path = path;
        
        // Find matching route
        auto it = routes.find(path);
        if (it != routes.end()) {
            Response resp = it->second(req);
            return "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n" + resp.body;
        }
        
        // Default 404 response
        return "HTTP/1.1 404 Not Found\r\nContent-Type: text/html\r\n\r\n<h1>404 Not Found</h1><p>The requested URL was not found on this server.</p>";
    }
    
public:
    Flask(const std::string& name = "Flask App") : app_name(name) {
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
    
    void get(const std::string& pattern, RouteHandler handler) {
        routes[pattern] = handler;
    }
    
    void run(int port = 5000, bool debug = false) {
        int server_fd;
        struct sockaddr_in address;
        int opt = 1;
        int addrlen = sizeof(address);
        
        // Create socket
#ifdef _WIN32
        if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET) {
#else
        if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
#endif
            std::cerr << "Socket creation failed" << std::endl;
            return;
        }
        
        // Set socket options
#ifdef _WIN32
        if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, (char*)&opt, sizeof(opt)) < 0) {
#else
        if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
#endif
            std::cerr << "Setsockopt failed" << std::endl;
            return;
        }
        
        address.sin_family = AF_INET;
        address.sin_addr.s_addr = INADDR_ANY;
        address.sin_port = htons(port);
        
        // Bind socket
        if (bind(server_fd, (struct sockaddr*)&address, sizeof(address)) < 0) {
            std::cerr << "Bind failed on port " << port << std::endl;
#ifdef _WIN32
            closesocket(server_fd);
#else
            close(server_fd);
#endif
            return;
        }
        
        // Listen for connections
        if (listen(server_fd, 3) < 0) {
            std::cerr << "Listen failed" << std::endl;
#ifdef _WIN32
            closesocket(server_fd);
#else
            close(server_fd);
#endif
            return;
        }
        
        std::cout << "Flask server running on http://localhost:" << port << std::endl;
        std::cout << "Press Ctrl+C to stop the server" << std::endl;
        
        while (true) {
            int new_socket;
#ifdef _WIN32
            if ((new_socket = accept(server_fd, (struct sockaddr*)&address, &addrlen)) == INVALID_SOCKET) {
#else
            if ((new_socket = accept(server_fd, (struct sockaddr*)&address, (socklen_t*)&addrlen)) < 0) {
#endif
                std::cerr << "Accept failed" << std::endl;
                continue;
            }
            
            // Read request
            char buffer[1024] = {0};
#ifdef _WIN32
            recv(new_socket, buffer, 1024, 0);
#else
            read(new_socket, buffer, 1024);
#endif
            
            if (debug) {
                std::cout << "Request received:\n" << buffer << std::endl;
            }
            
            // Handle request and send response
            std::string response = handle_request(std::string(buffer));
#ifdef _WIN32
            send(new_socket, response.c_str(), response.length(), 0);
            closesocket(new_socket);
#else
            send(new_socket, response.c_str(), response.length(), 0);
            close(new_socket);
#endif
        }
        
#ifdef _WIN32
        closesocket(server_fd);
#else
        close(server_fd);
#endif
    }
};

}