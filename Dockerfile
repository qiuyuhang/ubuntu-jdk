FROM ubuntu

MAINTAINER qiuyuhang <imqyh@qq.com>

WORKDIR /root

RUN apt update && apt install -y openssh-server openjdk-8-jdk wget nano maven --fix-missing

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

CMD [ "sh", "-c", "service ssh start; bash"]
