// main.cpp - Main program file
import funny;// Import C++ standard library wrapper module
import math;// Import our math module
using namespace funny;

int main() {
    print(R"( === C++20 测试 v1.1 ==== )");
    
    try {
        print(R"(Basic math operation test:)");
        print(R"(10 + 5 = )" + str(math::add(10, 5)));
        print(R"(10 - 5 = )" + str(math::subtract(10, 5)));
        print(R"(10 * 5 = )" + str(math::multiply(10, 5)));
        
        // Test division
        try {
            print(R"(10 / 5 = )" + str(math::divide(10, 5)));
            //print("10 / 0 = " + str(math::divide(10, 0))); // This will throw exception
        } catch (MyException& e) {
            print(R"(Caught exception: )" + str(e.what()));
        }
        
        // Test factorial
        try {
            print(R"(Advanced math function test:)");
            print(R"(5! = )" + str(math::factorial(5)));
            //print("-1! = " + str(math::factorial(-1))); // This will throw exception
        } catch (MyException& e) {
            print(R"(Caught exception: )" + str(e.what()));
        }
        

        
        int test_numbers[] = {2, 3, 4, 17, 25, 29};
        for (int num : test_numbers) {
            print(str(num) + (math::is_prime(num) ? R"( is prime)" : R"( is not prime)"));
        }
        
        print(R"(>> Program execution completed!)");
        
    } catch (MyException& e) {
        print(R"(Program exception: )" + str(e.what()));
    }
    
    return 0;
}
