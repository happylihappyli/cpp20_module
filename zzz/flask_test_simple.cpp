// Test with minimal flask.h
#include "flask_minimal.h"
#include "funny.h"

using namespace flask;
using namespace funny;

int main() {
    print("Testing minimal flask.h compilation");
    Flask app("Test App");
    return 0;
}