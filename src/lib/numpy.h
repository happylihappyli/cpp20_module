// numpy.h - Traditional header file for NumPy-like library (for IDE compatibility)
#pragma once

#include <vector>
#include <memory>
#include <concepts>
#include <type_traits>
#include <initializer_list>
#include <algorithm>
#include <numeric>
#include <stdexcept>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <cmath>

namespace numpy {
    // Concept for numeric types
    template<typename T>
    concept Numeric = std::is_arithmetic_v<T>;
    
    // Concept for floating point types
    template<typename T>
    concept FloatingPoint = std::floating_point<T>;
    
    // Shape type for multi-dimensional arrays
    using Shape = std::vector<size_t>;
using Strides = std::vector<size_t>;
    
    // Forward declarations
    template<Numeric T>
    class NDArray;
    
    // Core NDArray class declaration
    template<Numeric T>
    class NDArray {
    private:
        std::shared_ptr<T[]> data_;
        Shape shape_;
        Strides strides_;
        size_t size_;
        
        static Strides calculate_strides(const Shape& shape);
        size_t flat_index(const std::vector<size_t>& indices) const;
        
    public:
        // Constructors
        NDArray() = default;
        explicit NDArray(const Shape& shape);
        NDArray(const Shape& shape, const T& fill_value);
        NDArray(std::initializer_list<T> data);
        NDArray(const std::vector<T>& data, const Shape& shape);
        
        // Properties
        const Shape& shape() const noexcept { return shape_; }
        const Strides& strides() const noexcept { return strides_; }
        size_t size() const noexcept { return size_; }
    size_t ndim() const noexcept { return shape_.size(); }
        bool empty() const noexcept { return size_ == 0; }
        
        // Element access
        T& operator[](size_t index);
    const T& operator[](size_t index) const;
    T& at(const std::vector<size_t>& indices);
    const T& at(const std::vector<size_t>& indices) const;
        
        // Data access
        T* data() noexcept { return data_.get(); }
        const T* data() const noexcept { return data_.get(); }
        
        // Arithmetic operations
        NDArray operator+(const NDArray& other) const;
        NDArray operator-(const NDArray& other) const;
        NDArray operator*(const NDArray& other) const;
        NDArray operator/(const NDArray& other) const;
        
        NDArray operator+(const T& scalar) const;
        NDArray operator-(const T& scalar) const;
        NDArray operator*(const T& scalar) const;
        NDArray operator/(const T& scalar) const;
        
        // Comparison operations
        bool operator==(const NDArray& other) const;
        bool operator!=(const NDArray& other) const;
        
        // Shape operations
        NDArray reshape(const Shape& new_shape) const;
        NDArray transpose() const;
        NDArray flatten() const;
        
        // Statistical operations
        T sum() const;
        T mean() const requires FloatingPoint<T>;
        T std() const requires FloatingPoint<T>;
        T var() const requires FloatingPoint<T>;
        T min() const;
        T max() const;
        
        // Utility functions
        void fill(const T& value);
        std::string to_string() const;
    };
    
    // Array creation functions
    template<Numeric T>
    NDArray<T> zeros(const Shape& shape);
    
    template<Numeric T>
    NDArray<T> ones(const Shape& shape);
    
    template<Numeric T>
    NDArray<T> full(const Shape& shape, const T& value);
    
    template<Numeric T>
    NDArray<T> arange(T start, T stop, T step = T{1});
    
    template<FloatingPoint T>
    NDArray<T> linspace(T start, T stop, size_t num = 50);
    
    template<Numeric T>
    NDArray<T> eye(size_t n);
    
    // Mathematical functions
    template<Numeric T>
    NDArray<T> dot(const NDArray<T>& a, const NDArray<T>& b);
    
    template<Numeric T>
    NDArray<T> matmul(const NDArray<T>& a, const NDArray<T>& b);
    
    template<FloatingPoint T>
    NDArray<T> sqrt(const NDArray<T>& arr);
    
    template<FloatingPoint T>
    NDArray<T> exp(const NDArray<T>& arr);
    
    template<FloatingPoint T>
    NDArray<T> log(const NDArray<T>& arr);
    
    template<FloatingPoint T>
    NDArray<T> sin(const NDArray<T>& arr);
    
    template<FloatingPoint T>
    NDArray<T> cos(const NDArray<T>& arr);
    
    // Stream output
    template<Numeric T>
    std::ostream& operator<<(std::ostream& os, const NDArray<T>& arr);
    
    // Type aliases for common types
    using ArrayF = NDArray<float>;
    using ArrayD = NDArray<double>;
    using ArrayI = NDArray<int>;
    using ArrayL = NDArray<long long>;
}