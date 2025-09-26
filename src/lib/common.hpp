// common.hpp
#pragma once

#include <iostream>   // 输入输出流
#include <vector>     // 向量（动态数组）
#include <string>     // 字符串

// 模板别名定义
template <typename T>
using 向量 = std::vector<T>;

// 非模板别名定义
using 字符串 = std::string;
auto& 输出 = std::cout;      // 直接定义引用
auto 换行 = [](std::ostream& os) -> std::ostream& { return os << std::endl; };// 正确声明 endl 的别名

