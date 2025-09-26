// flask_simple.h - Simplified Flask-like web framework for C++20
#pragma once

#include <string>
#include <unordered_map>
#include <functional>

namespace flask {

// HTTP方法枚举
enum class HttpMethod {
    GET,
    POST
};

// 前向声明
class Request;
class Response;

// 路由处理函数类型
using RouteHandler = std::function<Response(const Request&)>;

// Request类
class Request {
public:
    std::string method;
    std::string path;
};

// Response类
class Response {
public:
    Response() = default;
    void set_html(const std::string& html) {
        body_ = html;
    }
private:
    std::string body_;
};

// Flask应用类
class Flask {
public:
    Flask(const std::string& name = "Flask App") {}
    void get(const std::string& pattern, RouteHandler handler) {}
    void run(int port = 5000, bool debug = false) {}
};

} // namespace flask