FROM python:3.12.4-slim

LABEL name="XHS-Downloader" version="2.2 Beta" authors="JoeanAmier"
ENV TZ Asia/Shanghai
ENV LANG en_US.UTF-8

WORKDIR /app
COPY . /app

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

EXPOSE 8000
CMD ["python", "main.py"]