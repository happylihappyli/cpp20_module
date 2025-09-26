// Simple Flask Demo - 简化版本测试
// 测试基本的模块导入和类型使用

import funny;
import flask;
using namespace flask;
using namespace funny;

int main() {
    try {
        print("Simple Flask demo starting...");
        
        // 测试基本的Flask类创建
        Flask app("Simple Demo");
        
        print("Flask app created successfully!");
        print("App name: " + app.get_name());
        
        // 测试Request和Response类
        Request req;
        req.method = "GET";
        req.path = "/test";
        
        Response resp;
        resp.set_html("<h1>Test Response</h1>");
        
        print("Request method: " + req.method);
        print("Request path: " + req.path);
        print("Response body: " + resp.body);
        
        print("Simple Flask demo completed successfully!");
        
    } catch (const std::exception& e) {
        print("Error: " + string(e.what()));
        return 1;
    }
    
    return 0;
}