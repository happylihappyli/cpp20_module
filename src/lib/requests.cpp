module;

#include <sstream>
#include <iostream>
#include <algorithm>
#include <cctype>
#include <iomanip>
#include <regex>
#include <string>
#include <unordered_map>
#include <optional>
#include <vector>
#include <memory>
#include <stdexcept>
#include <chrono>
#include <functional>

module requests;

namespace requests {
    
    // Response class implementation
    Response::Response(int status_code, const Headers& headers, const std::string& content, const std::string& url)
        : status_code_(status_code), headers_(headers), content_(content), url_(url) {}
    
    int Response::status_code() const {
        return status_code_;
    }
    
    StatusCode Response::status() const {
        return static_cast<StatusCode>(status_code_);
    }
    
    const std::string& Response::text() const {
        return content_;
    }
    
    const std::string& Response::content() const {
        return content_;
    }
    
    const Headers& Response::headers() const {
        return headers_;
    }
    
    bool Response::ok() const {
        return status_code_ >= 200 && status_code_ < 300;
    }
    
    std::optional<std::string> Response::get_header(const std::string& name) const {
        auto it = headers_.find(name);
        if (it != headers_.end()) {
            return it->second;
        }
        
        // Case-insensitive search
        for (const auto& [key, value] : headers_) {
            if (std::equal(key.begin(), key.end(), name.begin(), name.end(),
                          [](char a, char b) { return std::tolower(a) == std::tolower(b); })) {
                return value;
            }
        }
        
        return std::nullopt;
    }
    
    std::string Response::json() const {
        if (!is_json()) {
            throw RequestException("Response content-type is not JSON");
        }
        return text();
    }
    
    bool Response::is_json() const {
        auto content_type = get_header("Content-Type");
        if (!content_type) {
            return false;
        }
        return json_utils::is_json_content_type(*content_type);
    }
    
    const std::string& Response::url() const {
        return url_;
    }
    
    void Response::raise_for_status() const {
        if (!ok()) {
            throw HTTPError(status_code_, "HTTP Error for URL: " + url_);
        }
    }
    
    // Session class implementation
    Session::Session() = default;
    
    Session::Session(const RequestConfig& config) : config_(config) {}
    
    void Session::set_timeout(std::chrono::milliseconds timeout) {
        config_.timeout = timeout;
    }
    
    void Session::set_verify_ssl(bool verify) {
        config_.verify_ssl = verify;
    }
    
    void Session::set_user_agent(const std::string& user_agent) {
        config_.user_agent = user_agent;
    }
    
    void Session::set_header(const std::string& name, const std::string& value) {
        session_headers_[name] = value;
    }
    
    void Session::remove_header(const std::string& name) {
        session_headers_.erase(name);
    }
    
    Response Session::get(const std::string& url, const Params& params, const Headers& headers) {
        return request(Method::GET, url, "", headers, params);
    }
    
    Response Session::post(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return request(Method::POST, url, data, headers, params);
    }
    
    Response Session::put(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return request(Method::PUT, url, data, headers, params);
    }
    
    Response Session::delete_(const std::string& url, const Headers& headers, const Params& params) {
        return request(Method::DELETE, url, "", headers, params);
    }
    
    Response Session::patch(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return request(Method::PATCH, url, data, headers, params);
    }
    
    Response Session::head(const std::string& url, const Headers& headers, const Params& params) {
        return request(Method::HEAD, url, "", headers, params);
    }
    
    Response Session::options(const std::string& url, const Headers& headers, const Params& params) {
        return request(Method::OPTIONS, url, "", headers, params);
    }
    
    Response Session::request(Method method, const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        // 简化实现 - 实际应该使用真正的HTTP客户端库
        // 这里只是返回一个模拟响应
        
        std::string full_url = url;
        if (!params.empty()) {
            full_url += "?" + build_query_string(params);
        }
        
        // 模拟HTTP请求
        Headers response_headers = {
            {"Content-Type", "application/json"},
            {"Server", "cpp-requests-mock/1.0"}
        };
        
        std::string response_content = R"({"message": "Mock response", "method": "" + method_to_string(method) + "", "url": "" + full_url + ""})";
        
        // 模拟成功响应
        return Response(200, response_headers, response_content, full_url);
    }
    
    // Utility functions implementation
    std::string url_encode(const std::string& str) {
        std::ostringstream encoded;
        encoded.fill('0');
        encoded << std::hex;
        
        for (char c : str) {
            if (std::isalnum(c) || c == '-' || c == '_' || c == '.' || c == '~') {
                encoded << c;
            } else {
                encoded << '%' << std::setw(2) << static_cast<unsigned char>(c);
            }
        }
        
        return encoded.str();
    }
    
    std::string url_decode(const std::string& str) {
        std::string decoded;
        for (size_t i = 0; i < str.length(); ++i) {
            if (str[i] == '%' && i + 2 < str.length()) {
                int value;
                std::istringstream is(str.substr(i + 1, 2));
                if (is >> std::hex >> value) {
                    decoded += static_cast<char>(value);
                    i += 2;
                } else {
                    decoded += str[i];
                }
            } else if (str[i] == '+') {
                decoded += ' ';
            } else {
                decoded += str[i];
            }
        }
        return decoded;
    }
    
    std::string build_query_string(const Params& params) {
        std::ostringstream query;
        bool first = true;
        
        for (const auto& [key, value] : params) {
            if (!first) {
                query << "&";
            }
            query << url_encode(key) << "=" << url_encode(value);
            first = false;
        }
        
        return query.str();
    }
    
    std::string method_to_string(Method method) {
        switch (method) {
            case Method::GET: return "GET";
            case Method::POST: return "POST";
            case Method::PUT: return "PUT";
            case Method::DELETE: return "DELETE";
            case Method::PATCH: return "PATCH";
            case Method::HEAD: return "HEAD";
            case Method::OPTIONS: return "OPTIONS";
            default: return "UNKNOWN";
        }
    }
    
    ParsedUrl parse_url(const std::string& url) {
        ParsedUrl parsed;
        
        // 简化的URL解析实现
        std::regex url_regex(R"(^(https?)://([^:/]+)(?::(\d+))?(/[^?]*)?(?:\?(.*))?$)");
        std::smatch matches;
        
        if (std::regex_match(url, matches, url_regex)) {
            parsed.protocol = matches[1].str();
            parsed.host = matches[2].str();
            parsed.port = matches[3].matched ? std::stoi(matches[3].str()) : (parsed.protocol == "https" ? 443 : 80);
            parsed.path = matches[4].matched ? matches[4].str() : "/";
            parsed.query = matches[5].matched ? matches[5].str() : "";
        } else {
            throw RequestException("Invalid URL format: " + url);
        }
        
        return parsed;
    }
    
    // Global convenience functions
    Response get(const std::string& url, const Params& params, const Headers& headers) {
        return default_session().get(url, params, headers);
    }
    
    Response post(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return default_session().post(url, data, headers, params);
    }
    
    Response put(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return default_session().put(url, data, headers, params);
    }
    
    Response delete_(const std::string& url, const Headers& headers, const Params& params) {
        return default_session().delete_(url, headers, params);
    }
    
    Response patch(const std::string& url, const std::string& data, const Headers& headers, const Params& params) {
        return default_session().patch(url, data, headers, params);
    }
    
    Response head(const std::string& url, const Headers& headers, const Params& params) {
        return default_session().head(url, headers, params);
    }
    
    Response options(const std::string& url, const Headers& headers, const Params& params) {
        return default_session().options(url, headers, params);
    }
    
    // Default session
    Session& default_session() {
        static Session session;
        return session;
    }
    
    // JSON helper functions implementation
    namespace json_utils {
        std::string to_json_string(const std::string& str) {
            std::string result = "\"";
            for (char c : str) {
                switch (c) {
                    case '"': result += "\\\""; break;
                    case '\\': result += "\\\\"; break;
                    case '\b': result += "\\b"; break;
                    case '\f': result += "\\f"; break;
                    case '\n': result += "\\n"; break;
                    case '\r': result += "\\r"; break;
                    case '\t': result += "\\t"; break;
                    default:
                        if (c < 0x20) {
                            result += "\\u";
                            result += "0123456789abcdef"[(c >> 12) & 0xf];
                            result += "0123456789abcdef"[(c >> 8) & 0xf];
                            result += "0123456789abcdef"[(c >> 4) & 0xf];
                            result += "0123456789abcdef"[c & 0xf];
                        } else {
                            result += c;
                        }
                        break;
                }
            }
            result += "\"";
            return result;
        }
        
        std::string from_json_string(const std::string& json_str) {
            if (json_str.length() < 2 || json_str.front() != '"' || json_str.back() != '"') {
                return json_str; // Not a JSON string
            }
            
            std::string result;
            for (size_t i = 1; i < json_str.length() - 1; ++i) {
                if (json_str[i] == '\\' && i + 1 < json_str.length() - 1) {
                    switch (json_str[i + 1]) {
                        case '"': result += '"'; ++i; break;
                        case '\\': result += '\\'; ++i; break;
                        case 'b': result += '\b'; ++i; break;
                        case 'f': result += '\f'; ++i; break;
                        case 'n': result += '\n'; ++i; break;
                        case 'r': result += '\r'; ++i; break;
                        case 't': result += '\t'; ++i; break;
                        default: result += json_str[i]; break;
                    }
                } else {
                    result += json_str[i];
                }
            }
            return result;
        }
        
        bool is_json_content_type(const std::string& content_type) {
            return content_type.find("application/json") != std::string::npos ||
                   content_type.find("text/json") != std::string::npos;
        }
    }
}