import funny;
import json;

using namespace std;
using namespace funny;
using namespace json;

int main() {
    print(R"(=== JSON Module Demo ===)");
    
    try {
        Value null_val;
        Value bool_val(true);
        Value num_val(42.5);
        Value str_val(R"(Hello JSON)");
        
        print(R"(Basic values:)");
        print(R"(null: )" + dumps(null_val));
        print(R"(bool: )" + dumps(bool_val));
        print(R"(number: )" + dumps(num_val));
        print(R"(string: )" + dumps(str_val));
        print(R"()");
        
        Array arr = {Value(1), Value(2), Value(3)};
        Value arr_val(arr);
        print(R"(Array: )" + dumps(arr_val));
        print(R"()");
        
        Object obj;
        obj[R"(name)"] = Value(R"(Alice)");
        obj[R"(age)"] = Value(30);
        obj[R"(active)"] = Value(true);
        Value obj_val(obj);
        print(R"(Object: )" + dumps(obj_val));
        print(R"(Object size: )" + str(obj_val.size()));
        print(R"()");
        
        print(R"(Formatted JSON (indent=2):)");
        print(dumps(obj_val, 2));
        print(R"()");
        
        print(R"(Parsing tests:)");
        print(R"(Parse 'null': )" + dumps(loads(R"(null)")));
        print(R"(Parse 'true': )" + dumps(loads(R"(true)")));
        print(R"(Parse '123.45': )" + dumps(loads(R"(123.45)")));
        print(R"(Parse '"test"': )" + dumps(loads(R"("test")")));
        print(R"()");
        
        print(R"(Advanced operations:)");
        
        Object nested_obj;
        nested_obj[R"(user)"] = Value(Object{{R"(id)", Value(1)}, {R"(name)", Value(R"(Bob)")}});
        nested_obj[R"(scores)"] = Value(Array{Value(85), Value(92), Value(78)});
        nested_obj[R"(metadata)"] = Value(Object{{R"(created)", Value(R"(2024-01-01)")}, {R"(active)", Value(true)}});
        
        Value complex_val(nested_obj);
        print(R"(Complex nested structure:)");
        print(dumps(complex_val, 2));
        print(R"()");
        
        print(R"(Accessing nested data:)");
        print(R"(User name: )" + dumps(complex_val[R"(user)"][R"(name)"]));
        print(R"(First score: )" + dumps(complex_val[R"(scores)"][0]));
        print(R"(Metadata active: )" + dumps(complex_val[R"(metadata)"][R"(active)"]));
        print(R"()");
        
        print(R"(Type checking:)");
        print(R"(null_val is null: )" + str(null_val.is_null() ? R"(true)" : R"(false)"));
        print(R"(bool_val is bool: )" + str(bool_val.is_bool() ? R"(true)" : R"(false)"));
        print(R"(num_val is number: )" + str(num_val.is_number() ? R"(true)" : R"(false)"));
        print(R"(str_val is string: )" + str(str_val.is_string() ? R"(true)" : R"(false)"));
        print(R"(arr_val is array: )" + str(arr_val.is_array() ? R"(true)" : R"(false)"));
        print(R"(obj_val is object: )" + str(obj_val.is_object() ? R"(true)" : R"(false)"));
        print(R"()");
        
        print(R"(Value comparison:)");
        Value num1(42);
        Value num2(42);
        Value num3(43);
        print(R"(42 == 42: )" + str(num1 == num2 ? R"(true)" : R"(false)"));
        print(R"(42 != 43: )" + str(num1 != num3 ? R"(true)" : R"(false)"));
        
    } catch (const JsonException& e) {
        print(R"(JSON Error: )" + str(e.what()));
    } catch (const exception& e) {
        print(R"(Error: )" + str(e.what()));
    }
    
    return 0;
}