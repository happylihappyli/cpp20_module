// math.cpp - Math module implementation file
#include <stdexcept>
#include <cmath>

module math;

namespace math {
    // Basic math operations implementation
    int add(int a, int b) {
        return a + b;
    }
    
    int subtract(int a, int b) {
        return a - b;
    }
    
    int multiply(int a, int b) {
        return a * b;
    }
    
    double divide(double a, double b) {
        if (b == 0.0) {
            throw std::invalid_argument(R"(Division by zero)");
        }
        return a / b;
    }
    
    // Advanced math functions implementation
    double power(double base, int exponent) {
        if (exponent == 0) return 1.0;
        if (exponent < 0) {
            return 1.0 / power(base, -exponent);
        }
        
        double result = 1.0;
        for (int i = 0; i < exponent; ++i) {
            result *= base;
        }
        return result;
    }
    
    int factorial(int n) {
        if (n < 0) {
            throw std::invalid_argument(R"(Factorial argument must be non-negative)");
        }
        if (n == 0 || n == 1) return 1;
        
        int result = 1;
        for (int i = 2; i <= n; ++i) {
            result *= i;
        }
        return result;
    }
    
    bool is_prime(int n) {
        if (n <= 1) return false;
        if (n <= 3) return true;
        if (n % 2 == 0 || n % 3 == 0) return false;
        
        for (int i = 5; i * i <= n; i += 6) {
            if (n % i == 0 || n % (i + 2) == 0) {
                return false;
            }
        }
        return true;
    }
}