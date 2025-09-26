#pragma once

#include <string>
#include <vector>
#include <unordered_map>
#include <variant>
#include <memory>
#include <stdexcept>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <type_traits>
#include <cctype>
#include <algorithm>
#include <functional>

namespace json {
    enum class Type {
        Null = 0,
        Bool = 1,
        Number = 2,
        String = 3,
        Array = 4,
        Object = 5
    };
    
    class JsonException : public std::runtime_error {
    public:
        JsonException(const std::string& message) : std::runtime_error(message) {}
    };
    
    class Value;
    
    using Number = double;
    using Array = std::vector<Value>;
    using Object = std::unordered_map<std::string, Value>;
    
    class Value {
    private:
        std::variant<std::nullptr_t, bool, Number, std::string, Array, Object> data_;
        
    public:
        Value() : data_(nullptr) {}
        Value(std::nullptr_t) : data_(nullptr) {}
        Value(bool b) : data_(b) {}
        Value(int i) : data_(static_cast<Number>(i)) {}
        Value(double d) : data_(d) {}
        Value(const char* s) : data_(std::string(s)) {}
        Value(const std::string& s) : data_(s) {}
        Value(const Array& arr) : data_(arr) {}
        Value(const Object& obj) : data_(obj) {}
        
        Type type() const;
        bool is_null() const;
        bool is_bool() const;
        bool is_number() const;
        bool is_string() const;
        bool is_array() const;
        bool is_object() const;
        
        bool as_bool() const;
        Number as_number() const;
        const std::string& as_string() const;
        const Array& as_array() const;
        Array& as_array();
        const Object& as_object() const;
        Object& as_object();
        
        Value& operator[](size_t index);
        const Value& operator[](size_t index) const;
        void push_back(const Value& value);
        
        Value& operator[](const std::string& key);
        const Value& operator[](const std::string& key) const;
        bool contains(const std::string& key) const;
        
        size_t size() const;
        
        bool operator==(const Value& other) const;
        bool operator!=(const Value& other) const;
    };
    
    Value loads(const std::string& json_str);
    std::string dumps(const Value& value, int indent = 0);
    std::string serialize_value(const Value& value, int indent = 0, int current_indent = 0);
    
    // JSON parsing helper functions
    Value parse_value(const std::string& json_str, size_t& pos);
    void skip_whitespace(const std::string& json_str, size_t& pos);
    Value parse_null(const std::string& json_str, size_t& pos);
    Value parse_bool(const std::string& json_str, size_t& pos);
    Value parse_string(const std::string& json_str, size_t& pos);
    Value parse_number(const std::string& json_str, size_t& pos);
    Value parse_array(const std::string& json_str, size_t& pos);
    Value parse_object(const std::string& json_str, size_t& pos);
    
    // 输出流操作符
    std::ostream& operator<<(std::ostream& os, const Value& value);
}