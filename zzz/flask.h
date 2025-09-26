// flask.h - Flask-like web framework for C++20
#pragma once

#include <string>
#include <unordered_map>
#include <functional>
#include <vector>
#include <memory>
#include <thread>
#include <mutex>
#include <regex>
#include <sstream>
#include <iostream>
#include <fstream>
#include <filesystem>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#endif

namespace flask {

// HTTP方法枚举
enum class HttpMethod {
    GET,
    POST,
    PUT,
    DELETE,
    PATCH,
    HEAD,
    OPTIONS
};

// HTTP状态码
enum class HttpStatus {
    OK = 200,
    CREATED = 201,
    BAD_REQUEST = 400,
    NOT_FOUND = 404,
    INTERNAL_SERVER_ERROR = 500
};

// 前向声明
class Request;
class Response;
class Flask;

// 路由处理函数类型
using RouteHandler = std::function<Response(const Request&)>;
using MiddlewareHandler = std::function<void(const Request&, Response&)>;

// Request类 - HTTP请求封装
class Request {
public:
    std::string method;
    std::string path;
    std::string query_string;
    std::unordered_map<std::string, std::string> headers;
    std::unordered_map<std::string, std::string> args;  // URL参数
    std::unordered_map<std::string, std::string> form;  // POST表单数据
    std::string body;
    
    Request() = default;
    Request(const std::string& raw_request);
    
    // 获取请求参数
    std::string get_arg(const std::string& key, const std::string& default_value = "") const;
    std::string get_header(const std::string& key, const std::string& default_value = "") const;
    std::string get_form(const std::string& key, const std::string& default_value = "") const;
    
private:
    void parse_request(const std::string& raw_request);
    void parse_query_string(const std::string& query);
    void parse_form_data(const std::string& body);
};

// Response类 - HTTP响应封装
class Response {
public:
    HttpStatus status_code = HttpStatus::OK;
    std::unordered_map<std::string, std::string> headers;
    std::string body;
    
    Response() = default;
    Response(const std::string& content, HttpStatus status = HttpStatus::OK);
    
    // 设置响应内容
    void set_content(const std::string& content);
    void set_json(const std::string& json_content);
    void set_html(const std::string& html_content);
    void set_header(const std::string& key, const std::string& value);
    void set_status(HttpStatus status);
    
    // 生成HTTP响应字符串
    std::string to_http_string() const;
    
private:
    std::string status_text(HttpStatus status) const;
};

// 路由规则类
class Route {
public:
    std::string pattern;
    HttpMethod method;
    RouteHandler handler;
    std::regex regex_pattern;
    std::vector<std::string> param_names;
    
    Route(const std::string& pattern, HttpMethod method, RouteHandler handler);
    
    // 检查路径是否匹配
    bool matches(const std::string& path, HttpMethod method) const;
    
    // 提取路径参数
    std::unordered_map<std::string, std::string> extract_params(const std::string& path) const;
    
private:
    void compile_pattern();
};

// HTTP服务器类
class HttpServer {
public:
    HttpServer(int port = 5000);
    ~HttpServer();
    
    void start();
    void stop();
    void set_request_handler(std::function<Response(const Request&)> handler);
    
private:
    int port_;
    bool running_;
    std::thread server_thread_;
    std::function<Response(const Request&)> request_handler_;
    
    void server_loop();
#ifdef _WIN32
    void handle_client(SOCKET client_socket);
    std::string read_request(SOCKET socket);
    void send_response(SOCKET socket, const Response& response);
#else
    void handle_client(int client_socket);
    std::string read_request(int socket);
    void send_response(int socket, const Response& response);
#endif
};

// Flask应用类
class Flask {
public:
    Flask(const std::string& name = "Flask App");
    ~Flask() = default;
    
    // 路由装饰器方法
    void route(const std::string& pattern, HttpMethod method, RouteHandler handler);
    void get(const std::string& pattern, RouteHandler handler);
    void post(const std::string& pattern, RouteHandler handler);
    void put(const std::string& pattern, RouteHandler handler);
    void delete_(const std::string& pattern, RouteHandler handler);
    
    // 中间件支持
    void before_request(MiddlewareHandler middleware);
    void after_request(MiddlewareHandler middleware);
    
    // 静态文件服务
    void static_folder(const std::string& url_path, const std::string& folder_path);
    
    // 模板渲染
    Response render_template(const std::string& template_name, 
                           const std::unordered_map<std::string, std::string>& context = {});
    
    // 启动应用
    void run(int port = 5000, bool debug = false);
    
    // 处理请求的核心方法
    Response handle_request(const Request& request);
    
private:
    std::string app_name_;
    std::vector<Route> routes_;
    std::vector<MiddlewareHandler> before_middlewares_;
    std::vector<MiddlewareHandler> after_middlewares_;
    std::unordered_map<std::string, std::string> static_folders_;
    std::string template_folder_ = "templates";
    bool debug_mode_ = false;
    std::unique_ptr<HttpServer> server_;
    
    // 内部方法
    Response handle_static_file(const std::string& file_path);
    std::string load_template(const std::string& template_name);
    std::string render_template_string(const std::string& template_content, 
                                     const std::unordered_map<std::string, std::string>& context);
    Response create_error_response(HttpStatus status, const std::string& message = "");
};

// 辅助函数
std::string url_decode(const std::string& encoded);
std::string url_encode(const std::string& decoded);
std::string http_method_to_string(HttpMethod method);
HttpMethod string_to_http_method(const std::string& method_str);
std::string get_mime_type(const std::string& file_extension);

} // namespace flask