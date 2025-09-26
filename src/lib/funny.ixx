// funny.ixx - Standard library wrapper module interface file
module;
#include "funny.h"
export module funny;

// Re-export all funny functionality
export namespace funny {
    using funny::print;
    using funny::str;
    using funny::MyException;
}

// Re-export std types and operators
export using std::string;
export using std::vector;
export using std::map;
export using std::cout;
export using std::endl;
export using std::ostream;
export using std::exception;
export using std::operator<<;
export using std::operator+;