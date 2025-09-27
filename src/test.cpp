import funny;//  导入 C++ 标准库做了包装
import math;// 导入数学计算
using namespace funny;
    int i=0;
    int sum=0;
// 函数声明 
void fun_71();
void fun_73();
void fun_68();

void fun_71(){
    if (i<100){
        fun_73();
    }else{
        fun_68();
    }
}


void fun_73(){
    i++;
    sum+=i;
    fun_71();
}


void fun_68(){
    print(R"(1+...+100=)"); // 68
    print("sum="+str(sum));
}


int main(int argc, char* argv[]){
    fun_71();
}

