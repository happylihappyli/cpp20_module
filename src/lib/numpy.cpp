// numpy.cpp - NumPy-like library implementation
module;
#include <iostream>
#include <sstream>
#include <vector>
#include <cmath>
#include <concepts>
#include <type_traits>
#include <memory>
#include <algorithm>
#include <numeric>
#include <stdexcept>

module numpy;

namespace numpy {
    
    // NDArray implementation
    template<Numeric T>
    Strides NDArray<T>::calculate_strides(const Shape& shape) {
        if (shape.empty()) return {};
        
        Strides strides(shape.size());
        strides.back() = 1;
        
        for (int i = static_cast<int>(shape.size()) - 2; i >= 0; --i) {
            strides[i] = strides[i + 1] * shape[i + 1];
        }
        
        return strides;
    }
    
    template<Numeric T>
    size_t NDArray<T>::flat_index(const std::vector<size_t>& indices) const {
        if (indices.size() != shape_.size()) {
            return 0; // Return 0 for invalid indices
        }
        
        size_t index = 0;
        for (size_t i = 0; i < indices.size(); ++i) {
            if (indices[i] >= shape_[i]) {
                return 0; // Return 0 for out of bounds
            }
            index += indices[i] * strides_[i];
        }
        
        return index;
    }
    
    template<Numeric T>
    NDArray<T>::NDArray(const Shape& shape) 
        : shape_(shape), strides_(calculate_strides(shape)) {
        size_ = 1;
        for (auto dim : shape) {
            size_ *= dim;
        }
        if (size_ > 0) {
            data_ = std::shared_ptr<T[]>(new T[size_]{});
        }
    }
    
    template<Numeric T>
    NDArray<T>::NDArray(const Shape& shape, const T& fill_value) 
        : NDArray(shape) {
        fill(fill_value);
    }
    
    template<Numeric T>
    NDArray<T>::NDArray(std::initializer_list<T> data) 
        : shape_{data.size()}, strides_{1}, size_(data.size()) {
        if (size_ > 0) {
            data_ = std::shared_ptr<T[]>(new T[size_]);
            size_t i = 0;
            for (const auto& item : data) {
                data_[i++] = item;
            }
        }
    }
    
    template<Numeric T>
    NDArray<T>::NDArray(const std::vector<T>& data, const Shape& shape) 
        : shape_(shape), strides_(calculate_strides(shape)) {
        size_ = 1;
        for (auto dim : shape) {
            size_ *= dim;
        }
        
        if (data.size() != size_) {
            return; // Skip construction if size mismatch
        }
        
        if (size_ > 0) {
            data_ = std::shared_ptr<T[]>(new T[size_]);
            for (size_t i = 0; i < size_; ++i) {
                data_[i] = data[i];
            }
        }
    }
    
    template<Numeric T>
    T& NDArray<T>::operator[](size_t index) {
        if (index >= size_) {
            return data_[0]; // Return first element for out of bounds
        }
        return data_[index];
    }
    
    template<Numeric T>
    const T& NDArray<T>::operator[](size_t index) const {
        if (index >= size_) {
            return data_[0]; // Return first element for out of bounds
        }
        return data_[index];
    }
    
    template<Numeric T>
    T& NDArray<T>::at(const std::vector<size_t>& indices) {
        return data_[flat_index(indices)];
    }
    
    template<Numeric T>
    const T& NDArray<T>::at(const std::vector<size_t>& indices) const {
        return data_[flat_index(indices)];
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator+(const NDArray& other) const {
        if (shape_ != other.shape_) {
            return *this; // Return self if shapes don't match
        }
        
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] + other.data_[i];
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator-(const NDArray& other) const {
        if (shape_ != other.shape_) {
            return *this; // Return self if shapes don't match
        }
        
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] - other.data_[i];
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator*(const NDArray& other) const {
        if (shape_ != other.shape_) {
            return *this; // Return self if shapes don't match
        }
        
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] * other.data_[i];
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator/(const NDArray& other) const {
        if (shape_ != other.shape_) {
            return *this; // Return self if shapes don't match
        }
        
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            if (other.data_[i] == T{0}) {
                result.data_[i] = data_[i]; // Skip division by zero
            } else {
                result.data_[i] = data_[i] / other.data_[i];
            }
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator+(const T& scalar) const {
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] + scalar;
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator-(const T& scalar) const {
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] - scalar;
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator*(const T& scalar) const {
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] * scalar;
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::operator/(const T& scalar) const {
        if (scalar == T{0}) {
            return *this; // Return self for division by zero
        }
        
        NDArray result(shape_);
        for (size_t i = 0; i < size_; ++i) {
            result.data_[i] = data_[i] / scalar;
        }
        return result;
    }
    
    template<Numeric T>
    bool NDArray<T>::operator==(const NDArray& other) const {
        if (shape_ != other.shape_) return false;
        
        for (size_t i = 0; i < size_; ++i) {
            if (data_[i] != other.data_[i]) return false;
        }
        return true;
    }
    
    template<Numeric T>
    bool NDArray<T>::operator!=(const NDArray& other) const {
        return !(*this == other);
    }
    
    template<Numeric T>
    T NDArray<T>::sum() const {
        T result = T{0};
        for (size_t i = 0; i < size_; ++i) {
            result += data_[i];
        }
        return result;
    }
    
    template<Numeric T>
    T NDArray<T>::mean() const requires FloatingPoint<T> {
        if (size_ == 0) return T{0}; // Return 0 for empty array
        return sum() / static_cast<T>(size_);
    }
    
    template<Numeric T>
    T NDArray<T>::min() const {
        if (size_ == 0) throw std::runtime_error(R"(Cannot find min of empty array)");
        return *std::min_element(data_.get(), data_.get() + size_);
    }
    
    template<Numeric T>
    T NDArray<T>::max() const {
        if (size_ == 0) throw std::runtime_error(R"(Cannot find max of empty array)");
        return *std::max_element(data_.get(), data_.get() + size_);
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::reshape(const Shape& new_shape) const {
        size_t new_size = 1;
        for (auto dim : new_shape) {
            new_size *= dim;
        }
        if (new_size != size_) {
            return *this; // Return self if size mismatch
        }
        
        NDArray result;
        result.data_ = data_;  // Share the same data
        result.shape_ = new_shape;
        result.strides_ = calculate_strides(new_shape);
        result.size_ = size_;
        
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::transpose() const {
        if (shape_.size() != 2) {
            throw std::invalid_argument(R"(Transpose only supported for 2D arrays)");
        }
        
        Shape new_shape = {shape_[1], shape_[0]};
        NDArray result(new_shape);
        
        for (size_t i = 0; i < shape_[0]; ++i) {
            for (size_t j = 0; j < shape_[1]; ++j) {
                result.at({j, i}) = at({i, j});
            }
        }
        
        return result;
    }
    
    template<Numeric T>
    NDArray<T> NDArray<T>::flatten() const {
        return reshape({size_});
    }
    
    template<Numeric T>
    T NDArray<T>::std() const requires FloatingPoint<T> {
        if (size_ == 0) throw std::runtime_error(R"(Cannot compute std of empty array)");
        
        T mean_val = mean();
        T sum_sq_diff = T{0};
        
        for (size_t i = 0; i < size_; ++i) {            T diff = data_[i] - mean_val;            sum_sq_diff += diff * diff;        }
        
        return std::sqrt(sum_sq_diff / static_cast<T>(size_));
    }
    
    template<Numeric T>
    T NDArray<T>::var() const requires FloatingPoint<T> {
        if (size_ == 0) throw std::runtime_error(R"(Cannot compute variance of empty array)");
        
        T mean_val = mean();
        T sum_sq_diff = T{0};
        
        for (size_t i = 0; i < size_; ++i) {            T diff = data_[i] - mean_val;            sum_sq_diff += diff * diff;        }
        
        return sum_sq_diff / static_cast<T>(size_);
    }
    
    template<Numeric T>
    void NDArray<T>::fill(const T& value) {
        for (size_t i = 0; i < size_; ++i) {
            data_[i] = value;
        }
    }
    
    template<Numeric T>
    std::string NDArray<T>::to_string() const {
        std::ostringstream oss;
        oss << *this;
        return oss.str();
    }
    
    // Array creation functions
    template<Numeric T>
    NDArray<T> zeros(const Shape& shape) {
        return NDArray<T>(shape, T{0});
    }
    
    template<Numeric T>
    NDArray<T> ones(const Shape& shape) {
        return NDArray<T>(shape, T{1});
    }
    
    template<Numeric T>
    NDArray<T> full(const Shape& shape, const T& value) {
        return NDArray<T>(shape, value);
    }
    
    template<Numeric T>
    NDArray<T> arange(T start, T stop, T step) {
        if (step == T{0}) {
            throw std::invalid_argument(R"(Step cannot be zero)");
        }
        
        std::vector<T> data;
        for (T value = start; (step > 0 && value < stop) || (step < 0 && value > stop); value += step) {
            data.push_back(value);
        }
        
        return NDArray<T>(data, {data.size()});
    }
    
    template<FloatingPoint T>
    NDArray<T> linspace(T start, T stop, size_t num) {
        if (num == 0) {
            return NDArray<T>(Shape{0});
        }
        
        std::vector<T> data(num);
        if (num == 1) {
            data[0] = start;
        } else {
            T step = (stop - start) / static_cast<T>(num - 1);
            for (size_t i = 0; i < num; ++i) {
                data[i] = start + static_cast<T>(i) * step;
            }
        }
        
        return NDArray<T>(data, {num});
    }
    
    template<Numeric T>
    NDArray<T> eye(size_t n) {
        NDArray<T> result(Shape{n, n});
        for (size_t i = 0; i < n; ++i) {
            result.at({i, i}) = T{1};
        }
        return result;
    }
    
    template<Numeric T>
    NDArray<T> dot(const NDArray<T>& a, const NDArray<T>& b) {
        if (a.shape().size() != 1 || b.shape().size() != 1) {
            return NDArray<T>({1}, T{0}); // Return zero for invalid input
        }
        if (a.size() != b.size()) {
            return NDArray<T>({1}, T{0}); // Return zero for size mismatch
        }
        
        T result = T{0};
        for (size_t i = 0; i < a.size(); ++i) {
            result += a[i] * b[i];
        }
        
        return NDArray<T>({1}, result);
    }
    
    template<Numeric T>
    NDArray<T> matmul(const NDArray<T>& a, const NDArray<T>& b) {
        const auto& shape_a = a.shape();
        const auto& shape_b = b.shape();
        
        if (shape_a.size() != 2 || shape_b.size() != 2) {
            return a; // Return first array for invalid input
        }
        if (shape_a[1] != shape_b[0]) {
            return a; // Return first array for incompatible shapes
        }
        
        size_t m = shape_a[0];
        size_t n = shape_a[1];
        size_t p = shape_b[1];
        
        NDArray<T> result(Shape{m, p});
        
        for (size_t i = 0; i < m; ++i) {
            for (size_t j = 0; j < p; ++j) {
                T sum = T{0};
                for (size_t k = 0; k < n; ++k) {
                    sum += a.at({i, k}) * b.at({k, j});
                }
                result.at({i, j}) = sum;
            }
        }
        
        return result;
    }
    
    template<FloatingPoint T>
    NDArray<T> sqrt(const NDArray<T>& arr) {
        NDArray<T> result(arr.shape());
        for (size_t i = 0; i < arr.size(); ++i) {
            result[i] = std::sqrt(arr[i]);
        }
        return result;
    }
    
    template<FloatingPoint T>
    NDArray<T> exp(const NDArray<T>& arr) {
        NDArray<T> result(arr.shape());
        for (size_t i = 0; i < arr.size(); ++i) {
            result[i] = std::exp(arr[i]);
        }
        return result;
    }
    
    template<FloatingPoint T>
    NDArray<T> log(const NDArray<T>& arr) {
        NDArray<T> result(arr.shape());
        for (size_t i = 0; i < arr.size(); ++i) {
            if (arr[i] <= T{0}) {
                result[i] = T{0}; // Return 0 for non-positive numbers
            } else {
                result[i] = std::log(arr[i]);
            }
        }
        return result;
    }
    
    template<FloatingPoint T>
    NDArray<T> sin(const NDArray<T>& arr) {
        NDArray<T> result(arr.shape());
        for (size_t i = 0; i < arr.size(); ++i) {
            result[i] = std::sin(arr[i]);
        }
        return result;
    }
    
    template<FloatingPoint T>
    NDArray<T> cos(const NDArray<T>& arr) {
        NDArray<T> result(arr.shape());
        for (size_t i = 0; i < arr.size(); ++i) {
            result[i] = std::cos(arr[i]);
        }
        return result;
    }
    
    // Stream output
    template<Numeric T>
    std::ostream& operator<<(std::ostream& os, const NDArray<T>& arr) {
        if (arr.empty()) {
            os << R"([])";
            return os;
        }
        
        const auto& shape = arr.shape();
        
        if (shape.size() == 1) {
            os << R"([)";
            for (size_t i = 0; i < shape[0]; ++i) {            if (i > 0) os << R"(, )";            os << arr[i];        }
            os << R"(])";
        } else if (shape.size() == 2) {
            os << R"([)";
            for (size_t i = 0; i < shape[0]; ++i) {                if (i > 0) os << R"(,
 )";                os << R"([)";                for (size_t j = 0; j < shape[1]; ++j) {                    if (j > 0) os << R"(, )";                    os << arr.at({i, j});                }                os << R"(])";            }
            os << R"(])";
        } else {
            os << R"(NDArray(shape=[)";
            for (size_t i = 0; i < shape.size(); ++i) {                if (i > 0) os << R"(, )";                os << shape[i];            }
            os << R"(], size=)" << arr.size() << R"())";
        }
        
        return os;
    }
    
    // Explicit template instantiations for common types
    template class NDArray<float>;
    template class NDArray<double>;
    template class NDArray<int>;
    template class NDArray<long long>;
    
    // Array creation functions
    template NDArray<float> zeros<float>(const Shape&);
    template NDArray<double> zeros<double>(const Shape&);
    template NDArray<int> zeros<int>(const Shape&);
    
    template NDArray<float> ones<float>(const Shape&);
    template NDArray<double> ones<double>(const Shape&);
    template NDArray<int> ones<int>(const Shape&);
    
    template NDArray<float> full<float>(const Shape&, const float&);
    template NDArray<double> full<double>(const Shape&, const double&);
    template NDArray<int> full<int>(const Shape&, const int&);
    
    template NDArray<float> arange<float>(float, float, float);
    template NDArray<double> arange<double>(double, double, double);
    template NDArray<int> arange<int>(int, int, int);
    
    template NDArray<float> linspace<float>(float, float, size_t);    template NDArray<double> linspace<double>(double, double, size_t);        template NDArray<float> eye<float>(size_t);    template NDArray<double> eye<double>(size_t);    template NDArray<int> eye<int>(size_t);
    
    // Mathematical functions
    template NDArray<float> dot<float>(const NDArray<float>&, const NDArray<float>&);
    template NDArray<double> dot<double>(const NDArray<double>&, const NDArray<double>&);
    template NDArray<int> dot<int>(const NDArray<int>&, const NDArray<int>&);
    
    template NDArray<float> matmul<float>(const NDArray<float>&, const NDArray<float>&);
    template NDArray<double> matmul<double>(const NDArray<double>&, const NDArray<double>&);
    template NDArray<int> matmul<int>(const NDArray<int>&, const NDArray<int>&);
    
    // Mathematical functions explicit instantiations
    template NDArray<float> sqrt<float>(const NDArray<float>&);
    template NDArray<double> sqrt<double>(const NDArray<double>&);
    
    template NDArray<float> exp<float>(const NDArray<float>&);
    template NDArray<double> exp<double>(const NDArray<double>&);
    
    template NDArray<float> log<float>(const NDArray<float>&);
    template NDArray<double> log<double>(const NDArray<double>&);
    
    template NDArray<float> sin<float>(const NDArray<float>&);
    template NDArray<double> sin<double>(const NDArray<double>&);
    
    template NDArray<float> cos<float>(const NDArray<float>&);
    template NDArray<double> cos<double>(const NDArray<double>&);
    
    // Stream output
    template std::ostream& operator<< <float>(std::ostream&, const NDArray<float>&);
    template std::ostream& operator<< <double>(std::ostream&, const NDArray<double>&);
    template std::ostream& operator<< <int>(std::ostream&, const NDArray<int>&);
    template std::ostream& operator<< <long long>(std::ostream&, const NDArray<long long>&);
}