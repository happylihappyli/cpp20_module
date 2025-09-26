// C++20 Requests Library Demo
// Demonstration of Python-like requests library in C++

#include <iostream>
#include <string>
import requests;
import funny;

using namespace std;
using namespace requests;

int main() {
    try {
        funny::print("=== C++20 Requests Library Demo ===");
        funny::print("");
        
        // Example 1: Simple GET request
        funny::print("1. Simple GET Request");
        funny::print("Requesting: https://httpbin.org/get");
        
        try {
            Response response = get("https://httpbin.org/get");
            funny::print("Status Code: " + funny::str(response.status_code()));
            funny::print("Success: " + (response.ok() ? string("Yes") : string("No")));
            funny::print("Response Length: " + funny::str(response.text().length()));
            
            // Show partial response content
            string content = response.text();
            if (content.length() > 200) {
                content = content.substr(0, 200) + "...";
            }
            funny::print("Response Content: " + content);
        } catch (const ConnectionError& e) {
            funny::print("Connection Error: " + string(e.what()));
        } catch (const RequestException& e) {
            funny::print("Request Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 2: GET request with custom headers
        funny::print("2. GET Request with Custom Headers");
        funny::print("Requesting: https://httpbin.org/headers");
        
        try {
            Headers headers = {
                {"User-Agent", "C++20-Requests/1.0"},
                {"Accept", "application/json"}
            };
            
            Response response = get("https://httpbin.org/headers", {}, headers);
            funny::print("Status Code: " + funny::str(response.status_code()));
            funny::print("Content-Type: " + response.get_header("Content-Type").value_or("Unknown"));
            
            string content = response.text();
            if (content.length() > 300) {
                content = content.substr(0, 300) + "...";
            }
            funny::print("Response: " + content);
        } catch (const RequestException& e) {
            funny::print("Request Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 3: GET request with query parameters
        funny::print("3. GET Request with Query Parameters");
        funny::print("Requesting: https://httpbin.org/get with params");
        
        try {
            Params params = {
                {"name", "C++20 Requests"},
                {"version", "1.0"},
                {"language", "C++"}
            };
            
            Response response = get("https://httpbin.org/get", params);
            funny::print("Status Code: " + funny::str(response.status_code()));
            funny::print("Final URL: " + response.url());
            
            string content = response.text();
            if (content.length() > 400) {
                content = content.substr(0, 400) + "...";
            }
            funny::print("Response: " + content);
        } catch (const RequestException& e) {
            funny::print("Request Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 4: POST request with data
        funny::print("4. POST Request with Data");
        funny::print("Posting to: https://httpbin.org/post");
        
        try {
            string json_data = R"({"message": "Hello from C++20 Requests!", "timestamp": "2024-01-01"})";
            Headers headers = {
                {"Content-Type", "application/json"}
            };
            
            Response response = post("https://httpbin.org/post", json_data, headers);
            funny::print("Status Code: " + funny::str(response.status_code()));
            
            string content = response.text();
            if (content.length() > 500) {
                content = content.substr(0, 500) + "...";
            }
            funny::print("Response: " + content);
        } catch (const RequestException& e) {
            funny::print("Request Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 5: Using Session for multiple requests
        funny::print("5. Using Session for Multiple Requests");
        
        try {
            Session session;
            session.set_user_agent("C++20-Requests-Session/1.0");
            session.set_header("X-Custom-Header", "C++20-Demo");
            
            // First request
            Response response1 = session.get("https://httpbin.org/get");
            funny::print("First request status: " + funny::str(response1.status_code()));
            
            // Second request with the same session
            Params params = {{"session", "test"}};
            Response response2 = session.get("https://httpbin.org/get", params);
            funny::print("Second request status: " + funny::str(response2.status_code()));
            
        } catch (const RequestException& e) {
            funny::print("Session Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 6: JSON Response Handling
        funny::print("6. JSON Response Handling");
        
        try {
            Response response = get("https://httpbin.org/json");
            funny::print("Status Code: " + funny::str(response.status_code()));
            funny::print("Is JSON: " + (response.is_json() ? string("Yes") : string("No")));
            
            if (response.is_json()) {
                string json_content = response.json();
                if (json_content.length() > 300) {
                    json_content = json_content.substr(0, 300) + "...";
                }
                funny::print("JSON Content: " + json_content);
            }
        } catch (const RequestException& e) {
            funny::print("Request Error: " + string(e.what()));
        }
        
        funny::print("");
        
        // Example 7: Error handling
        funny::print("7. Error Handling Demo");
        
        try {
            Response response = get("https://httpbin.org/status/404");
            response.raise_for_status();  // This should throw an exception
        } catch (const HTTPError& e) {
            funny::print("Caught HTTP Error: " + string(e.what()));
        } catch (const RequestException& e) {
            funny::print("Caught Request Error: " + string(e.what()));
        }
        
        funny::print("");
        funny::print("=== Demo Complete ===");
        
    } catch (const exception& e) {
        cerr << "Unexpected error: " << e.what() << endl;
        return 1;
    }
    
    return 0;
}