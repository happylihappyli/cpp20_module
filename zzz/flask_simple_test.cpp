// Simple Flask Test
#include <iostream>
import funny;
import flask;

using namespace flask;
using namespace funny;

int main() {
    try {
        print("Testing Flask C++20 module...");
        
        Flask app("Test App");
        
        print("Flask app created successfully!");
        print("Flask C++20 module is working!");
        
        return 0;
    } catch (const std::exception& e) {
        std::cout << "Error: " << e.what() << std::endl;
        return 1;
    }
}