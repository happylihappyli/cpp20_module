// json.ixx - JSON library module interface file
module;
#include "json.h"
export module json;

// Re-export all json functionality
export namespace json {
    using json::Type;
    using json::JsonException;
    using json::Value;
    using json::Number;
    using json::Array;
    using json::Object;
    using json::loads;
    using json::dumps;
}