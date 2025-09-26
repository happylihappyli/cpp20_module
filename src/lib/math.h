// math.h - Traditional header file for math module (for IDE compatibility)
#pragma once

namespace math {
    // Basic math operations
    int add(int a, int b);
    int subtract(int a, int b);
    int multiply(int a, int b);
    double divide(double a, double b);
    
    // Advanced math functions
    double power(double base, int exponent);
    int factorial(int n);
    bool is_prime(int n);
}