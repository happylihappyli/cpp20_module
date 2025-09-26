import funny;// Import C++ standard library wrapper module
import math;// Import our math module
using namespace funny;

// 函数声明
void fun_55();
void fun_67();

int main(int argc, char* argv[]){

    if (1==1){
        fun_67();
    }else{
        fun_55();
    }

    return 0;
}

void fun_55(){
    print(R"(打印之前内容)");

}

void fun_67(){
    print(R"(fff错误)");

}


