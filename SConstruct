# SConstruct - 构建配置文件，编译带有C++20模块的test.cpp
import os

# Set up environment with VS2022 path - 使用正确的编译器路径
os.environ['PATH'] = r'D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\Hostx64\x64;' + os.environ.get('PATH', '')
env = Environment(CXX='cl', CXXFLAGS=['/std:c++20', '/EHsc', '/utf-8'], LINKFLAGS=['/SUBSYSTEM:CONSOLE'])

# 确保obj目录存在
obj_dir = 'obj'
if not os.path.exists(obj_dir):
    os.makedirs(obj_dir)

# 编译funny模块的实现
funny_obj = env.Command(
    target=os.path.join(obj_dir, 'funny.obj'),
    source='src/lib/funny.cpp',
    action='cl /std:c++20 /EHsc /c $SOURCE /Fo$TARGET'
)

# 编译math模块的实现
math_obj = env.Command(
    target=os.path.join(obj_dir, 'math.obj'),
    source='src/lib/math.cpp',
    action='cl /std:c++20 /EHsc /c $SOURCE /Fo$TARGET'
)

# 编译test.cpp
test_obj = env.Command(
    target=os.path.join(obj_dir, 'test.obj'),
    source='src/test.cpp',
    action='cl /std:c++20 /EHsc /c $SOURCE /Fo$TARGET'
)

# 链接所有对象文件生成可执行文件
test_exe = env.Command(
    target='test.exe',
    source=[funny_obj, math_obj, test_obj],
    action='cl /Fe$TARGET $SOURCES'
)

# 设置默认目标
Default(test_exe)

# 打印编译信息
print("SCons构建配置:")
print(f"  平台: {env['PLATFORM']}")
print(f"  编译器: {env.get('CXX', 'default')}")
print(f"  C++标准: C++20")
print("  目标: 编译带有funny和math模块的test.cpp文件")