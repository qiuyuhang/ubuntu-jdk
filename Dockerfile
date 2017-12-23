FROM ubuntu

MAINTAINER qiuyuhang <imqyh@qq.com>

WORKDIR /root

COPY sources.list /root/

RUN mv sources.list /etc/apt/  && \
    apt update && apt install -y openssh-server wget nano

RUN wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz

RUN tar -xzvf jdk-8u151-linux-x64.tar.gz && \
    rm jdk-8u151-linux-x64.tar.gz && \
    mv jdk1.8.0_151/ /opt/jdk

ENV JAVA_HOME=/opt/jdk
ENV PATH=$PATH:/opt/jdk/bin

CMD [ "sh", "-c", "service ssh start; bash"]
