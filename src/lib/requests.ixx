// C++20 Requests Library - HTTP client library similar to Python requests
// Provides simple and easy-to-use HTTP request functionality

module;

#include <string>
#include <unordered_map>
#include <optional>
#include <vector>
#include <memory>
#include <stdexcept>
#include <chrono>
#include <functional>

export module requests;

export namespace requests {
    // HTTP headers type definition
    using Headers = std::unordered_map<std::string, std::string>;
    
    // Query parameters type
    using Params = std::unordered_map<std::string, std::string>;
    
    // HTTP methods enumeration
    enum class Method {
        GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS
    };
    
    // HTTP status codes
    enum class StatusCode {
        OK = 200,
        CREATED = 201,
        NO_CONTENT = 204,
        BAD_REQUEST = 400,
        UNAUTHORIZED = 401,
        FORBIDDEN = 403,
        NOT_FOUND = 404,
        INTERNAL_SERVER_ERROR = 500
    };
    
    // HTTP response class
    export class Response {
    public:
        Response(int status_code, const Headers& headers, const std::string& content, const std::string& url);
        
        // Get status code
        int status_code() const;
        StatusCode status() const;
        
        // Get response content
        const std::string& text() const;
        const std::string& content() const;
        
        // Get response headers
        const Headers& headers() const;
        
        // Check if request was successful (200-299)
        bool ok() const;
        
        // Get specific header value
        std::optional<std::string> get_header(const std::string& name) const;
        
        // Get request URL
        const std::string& url() const;
        
        // Raise exception for HTTP errors
        void raise_for_status() const;
        
        // JSON support
        std::string json() const;       // Returns text if content-type is JSON
        bool is_json() const;           // Checks if response is JSON
        
    private:
        int status_code_;
        Headers headers_;
        std::string content_;
        std::string url_;
    };
    
    // Request configuration
    struct RequestConfig {
        std::chrono::milliseconds timeout{30000};  // 30 seconds
        bool verify_ssl{true};
        Headers default_headers;
        std::string user_agent{"cpp-requests/1.0"};
        bool follow_redirects{true};
        int max_redirects{10};
    };
    
    // Session class for persistent connections
    export class Session {
    private:
        RequestConfig config_;
        Headers session_headers_;
        
    public:
        Session();
        explicit Session(const RequestConfig& config);
        
        // Configuration methods
        void set_timeout(std::chrono::milliseconds timeout);
        void set_verify_ssl(bool verify);
        void set_user_agent(const std::string& user_agent);
        void set_header(const std::string& name, const std::string& value);
        void remove_header(const std::string& name);
        
        // HTTP request methods
        Response get(const std::string& url, const Params& params = {}, const Headers& headers = {});
        Response post(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
        Response put(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
        Response delete_(const std::string& url, const Headers& headers = {}, const Params& params = {});
        Response patch(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
        Response head(const std::string& url, const Headers& headers = {}, const Params& params = {});
        Response options(const std::string& url, const Headers& headers = {}, const Params& params = {});
        
        // Generic request method
        Response request(Method method, const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
    };
    
    // URL parsing structure
    export struct ParsedUrl {
        std::string protocol;
        std::string host;
        int port;
        std::string path;
        std::string query;
    };
    
    // HTTP client exception classes
    export class RequestException : public std::runtime_error {
    public:
        explicit RequestException(const std::string& message) : std::runtime_error(message) {}
    };
    
    export class ConnectionError : public RequestException {
    public:
        explicit ConnectionError(const std::string& message) : RequestException("Connection Error: " + message) {}
    };
    
    export class Timeout : public RequestException {
    public:
        explicit Timeout(const std::string& message) : RequestException("Timeout: " + message) {}
    };
    
    export class HTTPError : public RequestException {
    public:
        HTTPError(int status_code, const std::string& message) 
            : RequestException("HTTP Error " + std::to_string(status_code) + ": " + message) {}
    };
    
    // Global convenience functions
    export Response get(const std::string& url, const Params& params = {}, const Headers& headers = {});
    export Response post(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
    export Response put(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
    export Response delete_(const std::string& url, const Headers& headers = {}, const Params& params = {});
    export Response patch(const std::string& url, const std::string& data = "", const Headers& headers = {}, const Params& params = {});
    export Response head(const std::string& url, const Headers& headers = {}, const Params& params = {});
    export Response options(const std::string& url, const Headers& headers = {}, const Params& params = {});
    
    // Utility functions
    export ParsedUrl parse_url(const std::string& url);
    export std::string url_encode(const std::string& str);
    export std::string url_decode(const std::string& str);
    export std::string build_query_string(const Params& params);
    export std::string method_to_string(Method method);
    
    // Default session
    export Session& default_session();
    
    // JSON helper functions for requests
    namespace json_utils {
        std::string to_json_string(const std::string& str);
        std::string from_json_string(const std::string& json_str);
        bool is_json_content_type(const std::string& content_type);
    }
}