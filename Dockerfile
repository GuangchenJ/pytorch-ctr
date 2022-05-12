# build stage
#docker pull nvcr.io/nvidia/pytorch:22.04-py3
FROM nvcr.io/nvidia/pytorch:22.04-py3

ENV TZ=Asia/Shanghai

# 换源为清华
#ADD sources.list /etc/apt/sources.list

# 设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN apt -q update
RUN apt upgrade -y
# 想下啥直接在这里下好
RUN apt install -y git openssh-server vim screen

WORKDIR /workspace

EXPOSE 8722