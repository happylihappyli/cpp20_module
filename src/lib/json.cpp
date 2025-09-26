#include "json.h"

namespace json {

Type Value::type() const {
    return static_cast<Type>(data_.index());
}

bool Value::is_null() const { return type() == Type::Null; }
bool Value::is_bool() const { return type() == Type::Bool; }
bool Value::is_number() const { return type() == Type::Number; }
bool Value::is_string() const { return type() == Type::String; }
bool Value::is_array() const { return type() == Type::Array; }
bool Value::is_object() const { return type() == Type::Object; }

bool Value::as_bool() const {
    if (!is_bool()) {
        throw JsonException("Value is not a boolean");
    }
    return std::get<bool>(data_);
}

Number Value::as_number() const {
    if (!is_number()) {
        throw JsonException("Value is not a number");
    }
    return std::get<Number>(data_);
}

const std::string& Value::as_string() const {
    if (!is_string()) {
        throw JsonException("Value is not a string");
    }
    return std::get<std::string>(data_);
}

Array& Value::as_array() {
    if (!is_array()) {
        throw JsonException("Value is not an array");
    }
    return std::get<Array>(data_);
}

const Array& Value::as_array() const {
    if (!is_array()) {
        throw JsonException("Value is not an array");
    }
    return std::get<Array>(data_);
}

Object& Value::as_object() {
    if (!is_object()) {
        throw JsonException("Value is not an object");
    }
    return std::get<Object>(data_);
}

const Object& Value::as_object() const {
    if (!is_object()) {
        throw JsonException("Value is not an object");
    }
    return std::get<Object>(data_);
}

Value& Value::operator[](size_t index) {
    if (!is_array()) {
        throw JsonException("Value is not an array");
    }
    Array& arr = std::get<Array>(data_);
    if (index >= arr.size()) {
        arr.resize(index + 1);
    }
    return arr[index];
}

const Value& Value::operator[](size_t index) const {
    if (!is_array()) {
        throw JsonException("Value is not an array");
    }
    const Array& arr = std::get<Array>(data_);
    if (index >= arr.size()) {
        throw JsonException("Array index out of bounds");
    }
    return arr[index];
}

void Value::push_back(const Value& value) {
    if (!is_array()) {
        throw JsonException("Value is not an array");
    }
    std::get<Array>(data_).push_back(value);
}

Value& Value::operator[](const std::string& key) {
    if (!is_object()) {
        throw JsonException("Value is not an object");
    }
    return std::get<Object>(data_)[key];
}

const Value& Value::operator[](const std::string& key) const {
    if (!is_object()) {
        throw JsonException("Value is not an object");
    }
    const Object& obj = std::get<Object>(data_);
    auto it = obj.find(key);
    if (it == obj.end()) {
        throw JsonException("Key not found: " + key);
    }
    return it->second;
}

bool Value::contains(const std::string& key) const {
    if (!is_object()) {
        return false;
    }
    const Object& obj = std::get<Object>(data_);
    return obj.find(key) != obj.end();
}

size_t Value::size() const {
    if (is_array()) {
        return std::get<Array>(data_).size();
    } else if (is_object()) {
        return std::get<Object>(data_).size();
    } else if (is_string()) {
        return std::get<std::string>(data_).size();
    }
    return 0;
}

bool Value::operator==(const Value& other) const {
    return data_ == other.data_;
}

bool Value::operator!=(const Value& other) const {
    return !(*this == other);
}

void skip_whitespace(const std::string& json_str, size_t& pos) {
    while (pos < json_str.length() && std::isspace(json_str[pos])) {
        ++pos;
    }
}

Value parse_null(const std::string& json_str, size_t& pos) {
    if (json_str.substr(pos, 4) == "null") {
        pos += 4;
        return Value();
    }
    throw JsonException("Invalid null value");
}

Value parse_bool(const std::string& json_str, size_t& pos) {
    if (json_str.substr(pos, 4) == "true") {
        pos += 4;
        return Value(true);
    } else if (json_str.substr(pos, 5) == "false") {
        pos += 5;
        return Value(false);
    }
    throw JsonException("Invalid boolean value");
}

Value parse_string(const std::string& json_str, size_t& pos) {
    if (json_str[pos] != '"') {
        throw JsonException("Expected string");
    }
    ++pos;
    std::string result;
    while (pos < json_str.length() && json_str[pos] != '"') {
        if (json_str[pos] == '\\' && pos + 1 < json_str.length()) {
            ++pos;
            switch (json_str[pos]) {
                case '"': result += '"'; break;
                case '\\': result += '\\'; break;
                case '/': result += '/'; break;
                case 'b': result += '\b'; break;
                case 'f': result += '\f'; break;
                case 'n': result += '\n'; break;
                case 'r': result += '\r'; break;
                case 't': result += '\t'; break;
                default: throw JsonException("Invalid escape sequence");
            }
        } else {
            result += json_str[pos];
        }
        ++pos;
    }
    if (pos >= json_str.length()) {
        throw JsonException("Unterminated string");
    }
    ++pos;
    return Value(result);
}

Value parse_number(const std::string& json_str, size_t& pos) {
    size_t start = pos;
    if (json_str[pos] == '-') ++pos;
    if (!std::isdigit(json_str[pos])) {
        throw JsonException("Invalid number");
    }
    while (pos < json_str.length() && std::isdigit(json_str[pos])) ++pos;
    if (pos < json_str.length() && json_str[pos] == '.') {
        ++pos;
        if (!std::isdigit(json_str[pos])) {
            throw JsonException("Invalid number");
        }
        while (pos < json_str.length() && std::isdigit(json_str[pos])) ++pos;
    }
    if (pos < json_str.length() && (json_str[pos] == 'e' || json_str[pos] == 'E')) {
        ++pos;
        if (pos < json_str.length() && (json_str[pos] == '+' || json_str[pos] == '-')) ++pos;
        if (!std::isdigit(json_str[pos])) {
            throw JsonException("Invalid number");
        }
        while (pos < json_str.length() && std::isdigit(json_str[pos])) ++pos;
    }
    return Value(std::stod(json_str.substr(start, pos - start)));
}

Value parse_array(const std::string& json_str, size_t& pos) {
    if (json_str[pos] != '[') {
        throw JsonException("Expected array");
    }
    ++pos;
    skip_whitespace(json_str, pos);
    
    Array arr;
    if (pos < json_str.length() && json_str[pos] == ']') {
        ++pos;
        return Value(arr);
    }
    
    while (true) {
        arr.push_back(parse_value(json_str, pos));
        skip_whitespace(json_str, pos);
        
        if (pos >= json_str.length()) {
            throw JsonException("Unterminated array");
        }
        
        if (json_str[pos] == ']') {
            ++pos;
            break;
        } else if (json_str[pos] == ',') {
            ++pos;
            skip_whitespace(json_str, pos);
        } else {
            throw JsonException("Expected ',' or ']' in array");
        }
    }
    
    return Value(arr);
}

Value parse_object(const std::string& json_str, size_t& pos) {
    if (json_str[pos] != '{') {
        throw JsonException("Expected object");
    }
    ++pos;
    skip_whitespace(json_str, pos);
    
    Object obj;
    if (pos < json_str.length() && json_str[pos] == '}') {
        ++pos;
        return Value(obj);
    }
    
    while (true) {
        if (json_str[pos] != '"') {
            throw JsonException("Expected string key in object");
        }
        
        Value key_val = parse_string(json_str, pos);
        std::string key = key_val.as_string();
        
        skip_whitespace(json_str, pos);
        if (pos >= json_str.length() || json_str[pos] != ':') {
            throw JsonException("Expected ':' after key in object");
        }
        ++pos;
        skip_whitespace(json_str, pos);
        
        obj[key] = parse_value(json_str, pos);
        skip_whitespace(json_str, pos);
        
        if (pos >= json_str.length()) {
            throw JsonException("Unterminated object");
        }
        
        if (json_str[pos] == '}') {
            ++pos;
            break;
        } else if (json_str[pos] == ',') {
            ++pos;
            skip_whitespace(json_str, pos);
        } else {
            throw JsonException("Expected ',' or '}' in object");
        }
    }
    
    return Value(obj);
}

Value parse_value(const std::string& json_str, size_t& pos) {
    skip_whitespace(json_str, pos);
    
    if (pos >= json_str.length()) {
        throw JsonException("Unexpected end of input");
    }
    
    switch (json_str[pos]) {
        case 'n': return parse_null(json_str, pos);
        case 't':
        case 'f': return parse_bool(json_str, pos);
        case '"': return parse_string(json_str, pos);
        case '[': return parse_array(json_str, pos);
        case '{': return parse_object(json_str, pos);
        default:
            if (json_str[pos] == '-' || std::isdigit(json_str[pos])) {
                return parse_number(json_str, pos);
            }
            throw JsonException("Unexpected character: " + std::string(1, json_str[pos]));
    }
}

std::string serialize_value(const Value& value, int indent, int current_indent) {
    switch (value.type()) {
        case Type::Null:
            return "null";
        case Type::Bool:
            return value.as_bool() ? "true" : "false";
        case Type::Number: {
            std::ostringstream oss;
            oss << value.as_number();
            return oss.str();
        }
        case Type::String: {
            std::string result = "\"";
            const std::string& str = value.as_string();
            for (char c : str) {
                switch (c) {
                    case '"': result += "\\\""; break;
                    case '\\': result += "\\\\"; break;
                    case '\b': result += "\\b"; break;
                    case '\f': result += "\\f"; break;
                    case '\n': result += "\\n"; break;
                    case '\r': result += "\\r"; break;
                    case '\t': result += "\\t"; break;
                    default: result += c; break;
                }
            }
            result += "\"";
            return result;
        }
        case Type::Array: {
            std::string result = "[";
            const Array& arr = value.as_array();
            for (size_t i = 0; i < arr.size(); ++i) {
                if (i > 0) result += ",";
                result += serialize_value(arr[i], indent, current_indent);
            }
            result += "]";
            return result;
        }
        case Type::Object: {
            std::string result = "{";
            const Object& obj = value.as_object();
            bool first = true;
            for (const auto& pair : obj) {
                if (!first) result += ",";
                first = false;
                result += "\"" + pair.first + "\":" + serialize_value(pair.second, indent, current_indent);
            }
            result += "}";
            return result;
        }
    }
    return "";
}

Value loads(const std::string& json_str) {
    size_t pos = 0;
    Value result = parse_value(json_str, pos);
    skip_whitespace(json_str, pos);
    if (pos < json_str.length()) {
        throw JsonException("Extra characters after JSON");
    }
    return result;
}

std::string dumps(const Value& value, int indent) {
    return serialize_value(value, indent, 0);
}

std::ostream& operator<<(std::ostream& os, const Value& value) {
    os << dumps(value);
    return os;
}

} // namespace json