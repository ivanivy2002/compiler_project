import sys

def compare_files(file1_path, file2_path):
    # 尝试打开第一个文件
    try:
        with open(file1_path, 'r', encoding='utf-8') as file1:
            content1 = file1.read()
    except FileNotFoundError:
        print(f"文件 '{file1_path}' 不存在")
        return False

    # 尝试打开第二个文件
    try:
        with open(file2_path, 'r', encoding='utf-8') as file2:
            content2 = file2.read()
    except FileNotFoundError:
        print(f"文件 '{file2_path}' 不存在")
        return False

    # 比较文件内容是否相同
    if content1 == content2:
        print("两个文件的内容完全相同")
        return True
    else:
        print("两个文件的内容不相同")
        return False

if __name__ == "__main__":
    # 检查命令行参数是否正确
    if len(sys.argv) != 3:
        print("用法: python compareAST.py <文件1路径> <文件2路径>")
        sys.exit(1)

    # 获取命令行参数中的文件路径
    file1_path = sys.argv[1]
    file2_path = sys.argv[2]

    # 调用函数比较文件内容
    compare_files(file1_path, file2_path)
