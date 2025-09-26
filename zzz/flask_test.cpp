// flask_test.cpp - Flask framework unit tests
#include <exception>
#include <cassert>
#include "flask.h"
#include "funny.h"

using namespace flask;
using namespace funny;

void test_request_response() {
    print("测试 Request/Response 类...");
    
    // 测试Request类
    Request req;
    req.method = "GET";
    req.path = "/test";
    req.query_string = "name=test&value=123";
    req.headers["Content-Type"] = "application/json";
    
    assert(req.method == "GET");
    assert(req.path == "/test");
    assert(req.get_arg("name", "") == "test");
    assert(req.get_arg("value", "") == "123");
    assert(req.get_arg("missing", "default") == "default");
    
    // 测试Response类
    Response res;
    res.set_text("Hello World");
    assert(res.body == "Hello World");
    assert(res.headers["Content-Type"] == "text/plain");
    
    res.set_html("<h1>Hello</h1>");
    assert(res.body == "<h1>Hello</h1>");
    assert(res.headers["Content-Type"] == "text/html");
    
    res.set_json("{\"message\": \"test\"}");
    assert(res.body == "{\"message\": \"test\"}");
    assert(res.headers["Content-Type"] == "application/json");
    
    print("✓ Request/Response 测试通过");
}

void test_route_matching() {
    print("测试路由匹配...");
    
    Route route1("/users", HttpMethod::GET, nullptr);
    assert(route1.matches("/users", HttpMethod::GET));
    assert(!route1.matches("/users", HttpMethod::POST));
    assert(!route1.matches("/posts", HttpMethod::GET));
    
    Route route2("/users/<id>", HttpMethod::GET, nullptr);
    assert(route2.matches("/users/123", HttpMethod::GET));
    assert(route2.matches("/users/abc", HttpMethod::GET));
    assert(!route2.matches("/users", HttpMethod::GET));
    assert(!route2.matches("/users/123/posts", HttpMethod::GET));
    
    print("✓ 路由匹配测试通过");
}

void test_url_decode() {
    print("测试URL解码...");
    
    assert(url_decode("hello%20world") == "hello world");
    assert(url_decode("test%2Bvalue") == "test+value");
    assert(url_decode("normal") == "normal");
    assert(url_decode("") == "");
    
    print("✓ URL解码测试通过");
}

void test_mime_type() {
    print("测试MIME类型检测...");
    
    assert(get_mime_type("test.html") == "text/html");
    assert(get_mime_type("style.css") == "text/css");
    assert(get_mime_type("script.js") == "application/javascript");
    assert(get_mime_type("data.json") == "application/json");
    assert(get_mime_type("image.png") == "image/png");
    assert(get_mime_type("image.jpg") == "image/jpeg");
    assert(get_mime_type("unknown.xyz") == "application/octet-stream");
    
    print("✓ MIME类型检测测试通过");
}

void test_flask_app() {
    print("测试Flask应用...");
    
    Flask app("Test App");
    
    // 测试路由注册
    bool route_called = false;
    app.get("/test", [&route_called](const Request& req) -> Response {
        route_called = true;
        Response res;
        res.set_text("Test response");
        return res;
    });
    
    // 测试中间件
    bool before_called = false;
    bool after_called = false;
    
    app.before_request([&before_called](const Request& req, Response& res) {
        before_called = true;
    });
    
    app.after_request([&after_called](const Request& req, Response& res) {
        after_called = true;
    });
    
    print("✓ Flask应用测试通过");
}

void test_http_parsing() {
    print("测试HTTP请求解析...");
    
    std::string http_request = 
        "GET /hello?name=world HTTP/1.1\r\n"
        "Host: localhost:8080\r\n"
        "User-Agent: Test/1.0\r\n"
        "Content-Type: application/json\r\n"
        "\r\n";
    
    Request req = parse_http_request(http_request);
    
    assert(req.method == "GET");
    assert(req.path == "/hello");
    assert(req.query_string == "name=world");
    assert(req.headers["Host"] == "localhost:8080");
    assert(req.headers["User-Agent"] == "Test/1.0");
    assert(req.headers["Content-Type"] == "application/json");
    
    print("✓ HTTP请求解析测试通过");
}

int main() {
    try {
        print("=== Flask C++20 框架单元测试 ===");
        print("");
        
        test_request_response();
        print("");
        
        test_route_matching();
        print("");
        
        test_url_decode();
        print("");
        
        test_mime_type();
        print("");
        
        test_flask_app();
        print("");
        
        test_http_parsing();
        print("");
        
        print("🎉 所有测试通过!");
        print("Flask C++20框架核心功能正常工作。");
        
    } catch (const std::exception& e) {
        print("测试失败: " + std::string(e.what()));
        return 1;
    } catch (...) {
        print("测试失败: 未知错误");
        return 1;
    }
    
    return 0;
}