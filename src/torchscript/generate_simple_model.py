#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
创建一个非常简单的PyTorch模型，用于测试与LibTorch 2.8.0的兼容性
确保生成的模型可以在C++中使用torch::jit::load()正确加载
"""
import torch
import torch.nn as nn
import os

class SimpleAddModel(nn.Module):
    """最简单的加法模型"""
    def __init__(self):
        super(SimpleAddModel, self).__init__()
        # 这个模型不包含任何可学习的参数，只是简单地将两个输入相加

    def forward(self, x):
        # 输入x是一个形状为(2,)的张量，我们计算两个元素的和
        return x.sum()

class TwoInputAddModel(nn.Module):
    """接收两个单独输入的加法模型"""
    def __init__(self):
        super(TwoInputAddModel, self).__init__()
        # 简单的线性层，用于演示带参数的模型
        self.fc = nn.Linear(1, 1, bias=False)
        self.fc.weight.data.fill_(1.0)  # 设置权重为1.0

    def forward(self, a, b):
        # 两个单独的输入相加
        return a + b

class MoreComplexModel(nn.Module):
    """稍微复杂一点的模型，包含几个简单的操作"""
    def __init__(self):
        super(MoreComplexModel, self).__init__()
        # 一些简单的线性层
        self.fc1 = nn.Linear(2, 10)
        self.fc2 = nn.Linear(10, 1)
        self.relu = nn.ReLU()

    def forward(self, x):
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x

def generate_models():
    """生成多个用于测试的TorchScript模型"""
    # 设置随机种子以确保结果可重现
    torch.manual_seed(42)
    
    # 创建输出目录
    output_dir = os.path.join('..', '..', 'bin', 'models')
    os.makedirs(output_dir, exist_ok=True)
    
    # 打印当前PyTorch版本
    print(f"当前PyTorch版本: {torch.__version__}")
    
    # 1. 生成最简单的加法模型 (单个输入)
    simple_model = SimpleAddModel()
    simple_model.eval()  # 设置为评估模式
    
    # 创建示例输入
    example_input = torch.tensor([2.0, 3.0])
    
    # 跟踪模型
    traced_model = torch.jit.trace(simple_model, example_input)
    
    # 保存模型
    simple_model_path = os.path.join(output_dir, 'ultra_simple_add_model_v2.8.0.pt')
    traced_model.save(simple_model_path)
    print(f"\n已生成最简单的加法模型:")
    print(f"  路径: {simple_model_path}")
    print(f"  模型结构: {simple_model}")
    print(f"  示例输入: {example_input}")
    print(f"  示例输出: {simple_model(example_input)}")
    
    # 2. 生成接收两个输入的加法模型
    two_input_model = TwoInputAddModel()
    two_input_model.eval()  # 设置为评估模式
    
    # 创建示例输入
    input_a = torch.tensor([2.0])
    input_b = torch.tensor([3.0])
    
    # 跟踪模型
    traced_two_input_model = torch.jit.trace(two_input_model, (input_a, input_b))
    
    # 保存模型
    two_input_model_path = os.path.join(output_dir, 'two_input_add_model_v2.8.0.pt')
    traced_two_input_model.save(two_input_model_path)
    print(f"\n已生成接收两个输入的加法模型:")
    print(f"  路径: {two_input_model_path}")
    print(f"  模型结构: {two_input_model}")
    print(f"  示例输入: a={input_a}, b={input_b}")
    print(f"  示例输出: {two_input_model(input_a, input_b)}")
    
    # 3. 生成稍微复杂一点的模型
    complex_model = MoreComplexModel()
    complex_model.eval()  # 设置为评估模式
    
    # 跟踪模型
    traced_complex_model = torch.jit.trace(complex_model, example_input)
    
    # 保存模型
    complex_model_path = os.path.join(output_dir, 'complex_model_v2.8.0.pt')
    traced_complex_model.save(complex_model_path)
    print(f"\n已生成稍微复杂一点的模型:")
    print(f"  路径: {complex_model_path}")
    print(f"  模型结构: {complex_model}")
    print(f"  示例输入: {example_input}")
    print(f"  示例输出: {complex_model(example_input)}")
    
    # 更新model_info.txt文件
    update_model_info(output_dir)
    
    print(f"\n所有模型生成完成！")
    print(f"\n使用提示:")
    print(f"1. 确保LibTorch版本与PyTorch {torch.__version__}兼容")
    print(f"2. 在C++中，可以使用torch::jit::load()加载这些模型")
    print(f"3. 简单模型期望接收形状为(2,)的FloatTensor输入")
    
def update_model_info(output_dir):
    """更新model_info.txt文件，包含所有模型的信息"""
    info_path = os.path.join(output_dir, 'model_info_v2.txt')
    
    with open(info_path, 'w', encoding='utf-8') as f:
        f.write(f"导出版本: PyTorch {torch.__version__}\n")
        f.write("\n=== ultra_simple_add_model_v2.8.0.pt ===\n")
        f.write("描述: 最简单的加法模型，将两个输入相加\n")
        f.write("输入格式: 一维FloatTensor，包含两个元素，形状为(2,)\n")
        f.write("输出格式: 单个浮点数\n")
        f.write("示例: input = torch::tensor({2.0, 3.0}); output = model.forward(input).toTensor();\n")
        f.write("\n=== two_input_add_model_v2.8.0.pt ===\n")
        f.write("描述: 接收两个单独输入的加法模型\n")
        f.write("输入格式: 两个一维FloatTensor，每个包含一个元素\n")
        f.write("输出格式: 单个浮点数\n")
        f.write("示例: auto a = torch::tensor({2.0}); auto b = torch::tensor({3.0}); output = model.forward({a, b}).toTensor();\n")
        f.write("\n=== complex_model_v2.8.0.pt ===\n")
        f.write("描述: 包含两层线性层和ReLU激活函数的稍微复杂模型\n")
        f.write("输入格式: 一维FloatTensor，包含两个元素，形状为(2,)\n")
        f.write("输出格式: 单个浮点数\n")
        f.write("示例: input = torch::tensor({2.0, 3.0}); output = model.forward(input).toTensor();\n")
        f.write("\nC++项目使用建议:\n")
        f.write("1. 确保使用的LibTorch版本与PyTorch {torch.__version__}兼容\n")
        f.write("2. 加载模型时，如果遇到兼容性问题，可以尝试不同的模型\n")
        f.write("3. 最简单的模型最有可能成功加载\n")

if __name__ == '__main__':
    generate_models()