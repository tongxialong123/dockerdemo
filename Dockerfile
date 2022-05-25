FROM python:3.7
# 将工作目录设置为 /myapps
WORKDIR ./myapps
# 将当前目录内容复制到位于 /myapps 中的容器中
ADD . .
# 安装 requirements.txt 中指定的任何所需软件包
RUN pip install -r requirements.txt
# 定义环境变量
#ENV NAME World
# 在容器启动时运行 app.py
CMD ["python", "./myapp/hello_world.py"]
