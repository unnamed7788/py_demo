FROM anolis-registry.cn-zhangjiakou.cr.aliyuncs.com/openanolis/python:3.11.1-8.6

# 设置工作目录
WORKDIR ./

# 复制要求文件
COPY requirements.txt .

# 安装依赖
RUN pip3 install -r requirements.txt

# 复制应用文件
COPY main.py .

# 设置环境变量
ENV PYTHONPATH=./

# 启动命令
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]