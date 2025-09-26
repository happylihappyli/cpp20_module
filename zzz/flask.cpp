// flask.cpp - Flask-like web framework implementation
#include "flask.h"
#include <sstream>
#include <algorithm>
#include <cctype>
#include <cstring>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#endif

namespace flask {

// Request类实现
Request::Request(const std::string& raw_request) {
    parse_request(raw_request);
}

void Request::parse_request(const std::string& raw_request) {
    std::istringstream stream(raw_request);
    std::string line;
    
    // 解析请求行
    if (std::getline(stream, line)) {
        std::istringstream request_line(line);
        std::string path_with_query;
        request_line >> method >> path_with_query;
        
        // 分离路径和查询字符串
        auto query_pos = path_with_query.find('?');
        if (query_pos != std::string::npos) {
            path = path_with_query.substr(0, query_pos);
            query_string = path_with_query.substr(query_pos + 1);
            parse_query_string(query_string);
        } else {
            path = path_with_query;
        }
    }
    
    // 解析请求头
    while (std::getline(stream, line) && line != "\r" && !line.empty()) {
        auto colon_pos = line.find(':');
        if (colon_pos != std::string::npos) {
            std::string key = line.substr(0, colon_pos);
            std::string value = line.substr(colon_pos + 1);
            
            // 去除前后空格
            key.erase(0, key.find_first_not_of(" \t"));
            key.erase(key.find_last_not_of(" \t\r") + 1);
            value.erase(0, value.find_first_not_of(" \t"));
            value.erase(value.find_last_not_of(" \t\r") + 1);
            
            headers[key] = value;
        }
    }
    
    // 读取请求体
    std::string remaining;
    while (std::getline(stream, line)) {
        remaining += line + "\n";
    }
    body = remaining;
    
    // 如果是POST请求，解析表单数据
    if (method == "POST" && headers.count("Content-Type")) {
        const auto& content_type = headers["Content-Type"];
        if (content_type.find("application/x-www-form-urlencoded") != std::string::npos) {
            parse_form_data(body);
        }
    }
}

void Request::parse_query_string(const std::string& query) {
    std::istringstream stream(query);
    std::string pair;
    
    while (std::getline(stream, pair, '&')) {
        auto eq_pos = pair.find('=');
        if (eq_pos != std::string::npos) {
            std::string key = url_decode(pair.substr(0, eq_pos));
            std::string value = url_decode(pair.substr(eq_pos + 1));
            args[key] = value;
        }
    }
}

void Request::parse_form_data(const std::string& body) {
    std::istringstream stream(body);
    std::string pair;
    
    while (std::getline(stream, pair, '&')) {
        auto eq_pos = pair.find('=');
        if (eq_pos != std::string::npos) {
            std::string key = url_decode(pair.substr(0, eq_pos));
            std::string value = url_decode(pair.substr(eq_pos + 1));
            form[key] = value;
        }
    }
}

std::string Request::get_arg(const std::string& key, const std::string& default_value) const {
    auto it = args.find(key);
    return it != args.end() ? it->second : default_value;
}

std::string Request::get_header(const std::string& key, const std::string& default_value) const {
    auto it = headers.find(key);
    return it != headers.end() ? it->second : default_value;
}

std::string Request::get_form(const std::string& key, const std::string& default_value) const {
    auto it = form.find(key);
    return it != form.end() ? it->second : default_value;
}

// Response类实现
Response::Response(const std::string& content, HttpStatus status) 
    : status_code(status), body(content) {
    headers["Content-Type"] = "text/html; charset=utf-8";
    headers["Content-Length"] = std::to_string(content.length());
}

void Response::set_content(const std::string& content) {
    body = content;
    headers["Content-Length"] = std::to_string(content.length());
}

void Response::set_json(const std::string& json_content) {
    body = json_content;
    headers["Content-Type"] = "application/json; charset=utf-8";
    headers["Content-Length"] = std::to_string(json_content.length());
}

void Response::set_html(const std::string& html_content) {
    body = html_content;
    headers["Content-Type"] = "text/html; charset=utf-8";
    headers["Content-Length"] = std::to_string(html_content.length());
}

void Response::set_header(const std::string& key, const std::string& value) {
    headers[key] = value;
}

void Response::set_status(HttpStatus status) {
    status_code = status;
}

std::string Response::to_http_string() const {
    std::ostringstream response;
    
    // 状态行
    response << "HTTP/1.1 " << static_cast<int>(status_code) << " " 
             << status_text(status_code) << "\r\n";
    
    // 响应头
    for (const auto& [key, value] : headers) {
        response << key << ": " << value << "\r\n";
    }
    
    // 空行
    response << "\r\n";
    
    // 响应体
    response << body;
    
    return response.str();
}

std::string Response::status_text(HttpStatus status) const {
    switch (status) {
        case HttpStatus::OK: return "OK";
        case HttpStatus::CREATED: return "Created";
        case HttpStatus::BAD_REQUEST: return "Bad Request";
        case HttpStatus::NOT_FOUND: return "Not Found";
        case HttpStatus::INTERNAL_SERVER_ERROR: return "Internal Server Error";
        default: return "Unknown";
    }
}

// Route类实现
Route::Route(const std::string& pattern, HttpMethod method, RouteHandler handler)
    : pattern(pattern), method(method), handler(std::move(handler)) {
    compile_pattern();
}

void Route::compile_pattern() {
    std::string regex_str = pattern;
    
    // 将Flask风格的路径参数转换为正则表达式
    std::regex param_regex(R"(<([^>]+)>)");
    std::smatch match;
    
    while (std::regex_search(regex_str, match, param_regex)) {
        std::string param_name = match[1].str();
        param_names.push_back(param_name);
        
        // 替换为捕获组
        regex_str = std::regex_replace(regex_str, param_regex, "([^/]+)", std::regex_constants::format_first_only);
    }
    
    // 确保完全匹配
    regex_str = "^" + regex_str + "$";
    regex_pattern = std::regex(regex_str);
}

bool Route::matches(const std::string& path, HttpMethod method) const {
    return this->method == method && std::regex_match(path, regex_pattern);
}

std::unordered_map<std::string, std::string> Route::extract_params(const std::string& path) const {
    std::unordered_map<std::string, std::string> params;
    std::smatch match;
    
    if (std::regex_match(path, match, regex_pattern)) {
        for (size_t i = 1; i < match.size() && i - 1 < param_names.size(); ++i) {
            params[param_names[i - 1]] = match[i].str();
        }
    }
    
    return params;
}

// HttpServer类实现
HttpServer::HttpServer(int port) : port_(port), running_(false) {}

HttpServer::~HttpServer() {
    stop();
}

void HttpServer::start() {
    if (running_) return;
    
    running_ = true;
    server_thread_ = std::thread(&HttpServer::server_loop, this);
}

void HttpServer::stop() {
    running_ = false;
    if (server_thread_.joinable()) {
        server_thread_.join();
    }
}

void HttpServer::set_request_handler(std::function<Response(const Request&)> handler) {
    request_handler_ = std::move(handler);
}

void HttpServer::server_loop() {
#ifdef _WIN32
    // 初始化Winsock
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "WSAStartup failed" << std::endl;
        return;
    }
#endif
    
    SOCKET server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket == INVALID_SOCKET) {
        std::cerr << "Failed to create socket" << std::endl;
#ifdef _WIN32
        WSACleanup();
#endif
        return;
    }
    
    // 设置socket选项
    int opt = 1;
    setsockopt(server_socket, SOL_SOCKET, SO_REUSEADDR, (char*)&opt, sizeof(opt));
    
    sockaddr_in server_addr{};
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(port_);
    
    if (bind(server_socket, (sockaddr*)&server_addr, sizeof(server_addr)) == SOCKET_ERROR) {
        std::cerr << "Failed to bind socket" << std::endl;
#ifdef _WIN32
        closesocket(server_socket);
        WSACleanup();
#else
        close(server_socket);
#endif
        return;
    }
    
    if (listen(server_socket, 10) == SOCKET_ERROR) {
        std::cerr << "Failed to listen on socket" << std::endl;
#ifdef _WIN32
        closesocket(server_socket);
        WSACleanup();
#else
        close(server_socket);
#endif
        return;
    }
    
    std::cout << "Flask server running on http://localhost:" << port_ << std::endl;
    
    while (running_) {
        sockaddr_in client_addr{};
        int client_len = sizeof(client_addr);
        
        SOCKET client_socket = accept(server_socket, (sockaddr*)&client_addr, &client_len);
        if (client_socket != INVALID_SOCKET) {
            std::thread(&HttpServer::handle_client, this, client_socket).detach();
        }
    }
    
#ifdef _WIN32
    closesocket(server_socket);
    WSACleanup();
#else
    close(server_socket);
#endif
}

void HttpServer::handle_client(SOCKET client_socket) {
    std::string request_data = read_request(client_socket);
    
    if (!request_data.empty() && request_handler_) {
        Request request(request_data);
        Response response = request_handler_(request);
        send_response(client_socket, response);
    }
    
#ifdef _WIN32
    closesocket(client_socket);
#else
    close(client_socket);
#endif
}

std::string HttpServer::read_request(SOCKET socket) {
    char buffer[4096];
    std::string request;
    
    int bytes_read = recv(socket, buffer, sizeof(buffer) - 1, 0);
    if (bytes_read > 0) {
        buffer[bytes_read] = '\0';
        request = buffer;
    }
    
    return request;
}

void HttpServer::send_response(SOCKET socket, const Response& response) {
    std::string response_str = response.to_http_string();
    send(socket, response_str.c_str(), static_cast<int>(response_str.length()), 0);
}

// Flask类实现
Flask::Flask(const std::string& name) : app_name_(name) {}

void Flask::route(const std::string& pattern, HttpMethod method, RouteHandler handler) {
    routes_.emplace_back(pattern, method, std::move(handler));
}

void Flask::get(const std::string& pattern, RouteHandler handler) {
    route(pattern, HttpMethod::GET, std::move(handler));
}

void Flask::post(const std::string& pattern, RouteHandler handler) {
    route(pattern, HttpMethod::POST, std::move(handler));
}

void Flask::put(const std::string& pattern, RouteHandler handler) {
    route(pattern, HttpMethod::PUT, std::move(handler));
}

void Flask::delete_(const std::string& pattern, RouteHandler handler) {
    route(pattern, HttpMethod::DELETE, std::move(handler));
}

void Flask::before_request(MiddlewareHandler middleware) {
    before_middlewares_.push_back(std::move(middleware));
}

void Flask::after_request(MiddlewareHandler middleware) {
    after_middlewares_.push_back(std::move(middleware));
}

void Flask::static_folder(const std::string& url_path, const std::string& folder_path) {
    static_folders_[url_path] = folder_path;
}

Response Flask::render_template(const std::string& template_name, 
                              const std::unordered_map<std::string, std::string>& context) {
    try {
        std::string template_content = load_template(template_name);
        std::string rendered = render_template_string(template_content, context);
        
        Response response;
        response.set_html(rendered);
        return response;
    } catch (const std::exception& e) {
        return create_error_response(HttpStatus::INTERNAL_SERVER_ERROR, 
                                   "Template rendering error: " + std::string(e.what()));
    }
}

void Flask::run(int port, bool debug) {
    debug_mode_ = debug;
    
    server_ = std::make_unique<HttpServer>(port);
    server_->set_request_handler([this](const Request& req) {
        return handle_request(req);
    });
    
    server_->start();
    
    // 保持主线程运行
    std::cout << "Press Enter to stop the server..." << std::endl;
    std::cin.get();
    
    server_->stop();
}

Response Flask::handle_request(const Request& request) {
    try {
        // 转换HTTP方法
        HttpMethod method = string_to_http_method(request.method);
        
        // 执行before_request中间件
        Response response;
        for (auto& middleware : before_middlewares_) {
            middleware(request, response);
        }
        
        // 检查静态文件
        for (const auto& [url_path, folder_path] : static_folders_) {
            if (request.path.starts_with(url_path)) {
                std::string file_path = folder_path + request.path.substr(url_path.length());
                return handle_static_file(file_path);
            }
        }
        
        // 查找匹配的路由
        for (const auto& route : routes_) {
            if (route.matches(request.path, method)) {
                // 提取路径参数并添加到请求中
                Request modified_request = request;
                auto params = route.extract_params(request.path);
                for (const auto& [key, value] : params) {
                    modified_request.args[key] = value;
                }
                
                response = route.handler(modified_request);
                break;
            }
        }
        
        // 如果没有找到匹配的路由
        if (response.body.empty()) {
            response = create_error_response(HttpStatus::NOT_FOUND, "Page not found");
        }
        
        // 执行after_request中间件
        for (auto& middleware : after_middlewares_) {
            middleware(request, response);
        }
        
        return response;
        
    } catch (const std::exception& e) {
        if (debug_mode_) {
            return create_error_response(HttpStatus::INTERNAL_SERVER_ERROR, 
                                       "Internal error: " + std::string(e.what()));
        } else {
            return create_error_response(HttpStatus::INTERNAL_SERVER_ERROR);
        }
    }
}

Response Flask::handle_static_file(const std::string& file_path) {
    std::ifstream file(file_path, std::ios::binary);
    if (!file.is_open()) {
        return create_error_response(HttpStatus::NOT_FOUND, "File not found");
    }
    
    std::string content((std::istreambuf_iterator<char>(file)),
                       std::istreambuf_iterator<char>());
    
    Response response;
    response.set_content(content);
    
    // 设置MIME类型
    auto ext_pos = file_path.find_last_of('.');
    if (ext_pos != std::string::npos) {
        std::string extension = file_path.substr(ext_pos);
        response.set_header("Content-Type", get_mime_type(extension));
    }
    
    return response;
}

std::string Flask::load_template(const std::string& template_name) {
    std::string template_path = template_folder_ + "/" + template_name;
    std::ifstream file(template_path);
    
    if (!file.is_open()) {
        throw std::runtime_error("Template not found: " + template_name);
    }
    
    return std::string((std::istreambuf_iterator<char>(file)),
                      std::istreambuf_iterator<char>());
}

std::string Flask::render_template_string(const std::string& template_content, 
                                        const std::unordered_map<std::string, std::string>& context) {
    std::string result = template_content;
    
    // 简单的模板变量替换 {{ variable }}
    for (const auto& [key, value] : context) {
        std::string placeholder = "{{" + key + "}}";
        size_t pos = 0;
        while ((pos = result.find(placeholder, pos)) != std::string::npos) {
            result.replace(pos, placeholder.length(), value);
            pos += value.length();
        }
    }
    
    return result;
}

Response Flask::create_error_response(HttpStatus status, const std::string& message) {
    Response response;
    response.set_status(status);
    
    std::string error_html = "<html><body><h1>Error " + 
                           std::to_string(static_cast<int>(status)) + "</h1>";
    if (!message.empty()) {
        error_html += "<p>" + message + "</p>";
    }
    error_html += "</body></html>";
    
    response.set_html(error_html);
    return response;
}

// 辅助函数实现
std::string url_decode(const std::string& encoded) {
    std::string decoded;
    for (size_t i = 0; i < encoded.length(); ++i) {
        if (encoded[i] == '%' && i + 2 < encoded.length()) {
            int value;
            std::istringstream hex_stream(encoded.substr(i + 1, 2));
            hex_stream >> std::hex >> value;
            decoded += static_cast<char>(value);
            i += 2;
        } else if (encoded[i] == '+') {
            decoded += ' ';
        } else {
            decoded += encoded[i];
        }
    }
    return decoded;
}

std::string url_encode(const std::string& decoded) {
    std::ostringstream encoded;
    for (char c : decoded) {
        if (std::isalnum(c) || c == '-' || c == '_' || c == '.' || c == '~') {
            encoded << c;
        } else {
            encoded << '%' << std::hex << std::uppercase << static_cast<int>(static_cast<unsigned char>(c));
        }
    }
    return encoded.str();
}

std::string http_method_to_string(HttpMethod method) {
    switch (method) {
        case HttpMethod::GET: return "GET";
        case HttpMethod::POST: return "POST";
        case HttpMethod::PUT: return "PUT";
        case HttpMethod::DELETE: return "DELETE";
        case HttpMethod::PATCH: return "PATCH";
        case HttpMethod::HEAD: return "HEAD";
        case HttpMethod::OPTIONS: return "OPTIONS";
        default: return "UNKNOWN";
    }
}

HttpMethod string_to_http_method(const std::string& method_str) {
    if (method_str == "GET") return HttpMethod::GET;
    if (method_str == "POST") return HttpMethod::POST;
    if (method_str == "PUT") return HttpMethod::PUT;
    if (method_str == "DELETE") return HttpMethod::DELETE;
    if (method_str == "PATCH") return HttpMethod::PATCH;
    if (method_str == "HEAD") return HttpMethod::HEAD;
    if (method_str == "OPTIONS") return HttpMethod::OPTIONS;
    return HttpMethod::GET; // 默认
}

std::string get_mime_type(const std::string& file_extension) {
    static std::unordered_map<std::string, std::string> mime_types = {
        {".html", "text/html"},
        {".htm", "text/html"},
        {".css", "text/css"},
        {".js", "application/javascript"},
        {".json", "application/json"},
        {".png", "image/png"},
        {".jpg", "image/jpeg"},
        {".jpeg", "image/jpeg"},
        {".gif", "image/gif"},
        {".svg", "image/svg+xml"},
        {".txt", "text/plain"},
        {".pdf", "application/pdf"}
    };
    
    auto it = mime_types.find(file_extension);
    return it != mime_types.end() ? it->second : "application/octet-stream";
}

} // namespace flask