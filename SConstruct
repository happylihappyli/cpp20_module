# SConstruct - 构建配置文件，编译带有C++20模块的test.cpp
import os

# Set up environment with VS2022 path - 使用正确的编译器路径
os.environ['PATH'] = r'D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\Hostx64\x64;' + os.environ.get('PATH', '')

# 创建基础环境
env = Environment(CXX='cl', LINKFLAGS=['/SUBSYSTEM:CONSOLE'])

# 定义统一的编译选项字符串，确保所有文件使用相同的选项
# 添加/wd5050来禁用模块导入时的环境不兼容警告
compile_opts = '/std:c++20 /EHsc /utf-8 /D_CRT_SECURE_NO_WARNINGS /wd5050'

# 确保obj目录存在
obj_dir = 'obj'
if not os.path.exists(obj_dir):
    os.makedirs(obj_dir)

# 编译funny.ixx接口文件
funny_ifc = env.Command(
    target=os.path.join(obj_dir, 'funny.ifc'),
    source='src/lib/funny.ixx',
    action=f'cl {compile_opts} /interface /c $SOURCE /Fo$TARGET'
)

# 编译math.ixx接口文件
math_ifc = env.Command(
    target=os.path.join(obj_dir, 'math.ifc'),
    source='src/lib/math.ixx',
    action=f'cl {compile_opts} /interface /c $SOURCE /Fo$TARGET'
)

# 编译graphics模块接口文件
graphics_ifc = env.Command(
    target=os.path.join(obj_dir, 'graphics.ifc'),
    source='src/lib/graphics.ixx',
    action=f'cl {compile_opts} /interface /c $SOURCE /Fo$TARGET'
)

# 编译模块实现文件使用统一选项
funny_obj = env.Command(
    target=os.path.join(obj_dir, 'funny.obj'),
    source='src/lib/funny.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[funny_ifc]
)

math_obj = env.Command(
    target=os.path.join(obj_dir, 'math.obj'),
    source='src/lib/math.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[math_ifc]
)

# 编译graphics模块实现文件
graphics_obj = env.Command(
    target=os.path.join(obj_dir, 'graphics.obj'),
    source='src/lib/graphics.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[graphics_ifc]
)

# 编译test.cpp使用统一选项
test_obj = env.Command(
    target=os.path.join(obj_dir, 'test.obj'),
    source='src/test.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[funny_ifc, math_ifc]
)

# 编译main.cpp使用统一选项
main_obj = env.Command(
    target=os.path.join(obj_dir, 'main.obj'),
    source='src/main.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[funny_ifc, math_ifc]
)

# 编译graphics_demo.cpp使用统一选项
graphics_demo_obj = env.Command(
    target=os.path.join(obj_dir, 'graphics_demo.obj'),
    source='src/graphics_demo.cpp',
    action=f'cl {compile_opts} /c $SOURCE /Fo$TARGET',
    depends=[graphics_ifc]
)

# 确保bin目录存在
bin_dir = 'bin'
if not os.path.exists(bin_dir):
    os.makedirs(bin_dir)

# 链接所有对象文件生成可执行文件
test_exe = env.Command(
    target=os.path.join(bin_dir, 'test.exe'),
    source=[funny_obj, math_obj, test_obj],
    action='cl /Fe$TARGET $SOURCES'
)

# 链接main.cpp生成可执行文件
main_exe = env.Command(
    target=os.path.join(bin_dir, 'main.exe'),
    source=[funny_obj, math_obj, main_obj],
    action='cl /Fe$TARGET $SOURCES'
)

# 链接graphics_demo.cpp生成可执行文件
graphics_demo_exe = env.Command(
    target=os.path.join(bin_dir, 'graphics_demo.exe'),
    source=[graphics_obj, graphics_demo_obj],
    action='cl /Fe$TARGET $SOURCES /link user32.lib gdi32.lib'
)

# 设置默认目标
Default([test_exe, main_exe, graphics_demo_exe])

# 打印编译信息
print("SCons构建配置:")
print(f"  平台: {env['PLATFORM']}")
print(f"  编译器: {env.get('CXX', 'default')}")
print(f"  C++标准: C++20")
print("  目标: 编译带有funny和math模块的test.cpp和main.cpp文件")
print(f"  输出目录: {bin_dir}")