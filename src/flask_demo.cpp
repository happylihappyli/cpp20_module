// -*- coding: utf-8 -*-
// Flask C++ 演示程序

import flask;
import funny;

using namespace flask;
using namespace funny;

// 路由处理函数
Response home_handler(const Request& req) {
    Response resp;
    resp.set_html_utf8(u8R"(<meta charset="utf-8"><h1>欢迎使用 Flask C++!</h1><p>这是主页。</p><p><a href='/hello'>前往问候页面</a></p>)");
    return resp;
}

Response hello_handler(const Request& req) {
    Response resp;
    resp.set_html_utf8(u8R"(<meta charset="utf-8"><h1>你好，世界！</h1><p>这是来自 Flask C++ 的问候！</p><p><a href='/'>返回主页</a></p>)");
    return resp;
}

Response api_data_handler(const Request& req) {
    Response resp;
    resp.set_html_utf8(u8R"({"message": "来自 Flask C++ API 的问候", "status": "success"})");
    return resp;
}

int main() {
    try {
        print("Flask demo starting...");
        
        // 创建 Flask 应用
        Flask app("Flask C++ Demo");
        print("Flask application configured!");
        
        // 注册路由
        app.get("/", home_handler);
        app.get("/hello", hello_handler);
        app.get("/api/data", api_data_handler);
        
        print("Supported routes:");
        print("  GET  /           - Home page");
        print("  GET  /hello      - Greeting page");
        print("  GET  /user/[name] - User info");
        print("  GET  /api/data   - JSON API");
        print("");
        
        print("Starting Flask server...");
        
        // 启动服务器
        app.run(8080);
        
    } catch (const MyException& e) {
        print("Error occurred: " + str(e.what()));
        return 1;
    }
    
    return 0;
}