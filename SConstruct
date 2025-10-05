# SConstruct - 构建配置文件，编译带有C++20模块的test.cpp
import os

# Set up environment with VS2022 path - 使用正确的编译器路径
os.environ['PATH'] = r'D:\Code\VS2022\Community\VC\Tools\MSVC\14.39.33519\bin\Hostx64\x64;' + os.environ.get('PATH', '')

# PyTorch配置 - 用户需要修改此路径
PYTORCH_PATH = os.environ.get('PYTORCH_PATH', '')

# 如果没有设置环境变量，使用默认路径（用户可能需要修改）
if not PYTORCH_PATH:
    # 检查常见的PyTorch安装位置
    common_paths = [
        r'D:\Code\libtorch-win-shared-with-deps-debug-2.3.0+cu118\libtorch',
        os.path.join(os.path.expanduser('~'), 'libtorch')
    ]
    
    for path in common_paths:
        if os.path.exists(os.path.join(path, 'include', 'torch', 'torch.h')):
            PYTORCH_PATH = path
            print(f"自动检测到PyTorch路径: {PYTORCH_PATH}")
            break
    
    # 如果没有找到，设置一个默认值并提示用户
    if not PYTORCH_PATH:
        PYTORCH_PATH = r'D:\Code\libtorch'
        print(f"警告: 未找到PyTorch安装路径，使用默认路径: {PYTORCH_PATH}")
        print("请手动设置PYTORCH_PATH环境变量指向您的libtorch安装目录")
        print("例如: set PYTORCH_PATH=C:\\path\\to\\libtorch")
        
# 检查PyTorch头文件是否存在
torch_header = os.path.join(PYTORCH_PATH, 'include', 'torch', 'torch.h')
if not os.path.exists(torch_header):
    print(f"错误: 在路径 {PYTORCH_PATH} 中找不到PyTorch头文件")
    print(f"请确保 {torch_header} 存在")
    print("解决方法:")
    print("1. 从PyTorch官网下载与您的PyTorch版本匹配的LibTorch库")
    print("2. 解压到本地目录")
    print("3. 设置PYTORCH_PATH环境变量指向该目录")
    
    # 如果PyTorch路径不存在，我们将跳过TorchScript示例的编译
    SKIP_TORCHSCRIPT = True
else:
    print(f"使用PyTorch路径: {PYTORCH_PATH}")
    SKIP_TORCHSCRIPT = False

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

# 编译graphics_demo.cpp使用统一选项，指定模块搜索路径
# 由于直接使用import有问题，我们暂时回退到使用include
# 在后续版本中可以尝试其他方法来使import正常工作
graphics_demo_obj = env.Command(
    target=os.path.join(obj_dir, 'graphics_demo.obj'),
    source='src/graphics_demo.cpp',
    action=f'cl {compile_opts} /I{os.path.join(os.getcwd(), "src")} /c $SOURCE /Fo$TARGET',
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

# 终止可能正在运行的graphics_demo.exe进程
taskkill_cmd = env.Command(
    target='taskkill_done_marker',
    source=[],
    action='taskkill /F /IM graphics_demo.exe /FI "STATUS eq RUNNING" 2>NUL || exit 0 && echo done > taskkill_done_marker'
)

# 链接graphics_demo.cpp生成可执行文件
graphics_demo_exe = env.Command(
    target=os.path.join(bin_dir, 'graphics_demo.exe'),
    source=[graphics_obj, graphics_demo_obj],
    action='cl /Fe$TARGET $SOURCES /link user32.lib gdi32.lib'
)

# 确保taskkill命令在链接前执行
env.Depends(graphics_demo_exe, taskkill_cmd)

# 根据PyTorch路径是否有效来决定是否编译TorchScript示例
default_targets = [test_exe, main_exe, graphics_demo_exe]

if not SKIP_TORCHSCRIPT:
    # 编译TorchScript示例代码
    # 设置PyTorch的包含路径和库路径
    torchscript_compile_opts = f'{compile_opts} /std:c++17 /I{PYTORCH_PATH}/include /I{PYTORCH_PATH}/include/torch/csrc/api/include'
    torchscript_libs = f'/link /LIBPATH:{PYTORCH_PATH}/lib libtorch.lib libtorch_cpu.lib c10.lib'

    # 编译load_torchscript.cpp
    torchscript_obj = env.Command(
        target=os.path.join(obj_dir, 'load_torchscript.obj'),
        source='src/torchscript/load_torchscript.cpp',
        action=f'cl {torchscript_compile_opts} /c $SOURCE /Fo$TARGET'
    )

    # 链接生成TorchScript可执行文件
    torchscript_exe = env.Command(
        target=os.path.join(bin_dir, 'load_torchscript.exe'),
        source=[torchscript_obj],
        action=f'cl /Fe$TARGET $SOURCES {torchscript_libs}'
    )
    
    # 将TorchScript示例添加到默认目标
    default_targets.append(torchscript_exe)
else:
    print("跳过TorchScript示例的编译，因为找不到有效的PyTorch安装")

# 设置默认目标
Default(default_targets)

# 打印编译信息
print("SCons构建配置:")
print(f"  平台: {env['PLATFORM']}")
print(f"  编译器: {env.get('CXX', 'default')}")
print(f"  C++标准: C++20")
print("  目标: 编译带有funny和math模块的test.cpp和main.cpp文件")
if not SKIP_TORCHSCRIPT:
    print("         以及TorchScript示例")
print(f"  输出目录: {bin_dir}")

if SKIP_TORCHSCRIPT:
    print()
    print("提示: 如需编译TorchScript示例，请设置正确的PyTorch路径。")
    print("方法1: 设置环境变量")
    print("  set PYTORCH_PATH=C:\\path\\to\\libtorch")
    print("方法2: 直接修改SConstruct文件中的PYTORCH_PATH变量")
    print("然后重新运行scons命令。")