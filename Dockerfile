FROM debian:latest

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install wget unzip curl -y

RUN echo "* soft nproc 11000" >> /etc/security/limits.conf && \
    echo "* hard nproc 11000" >> /etc/security/limits.conf && \
    echo "* soft nofile 655350" >> /etc/security/limits.conf && \
    echo "* hard nofile 655350" >> /etc/security/limits.conf && \
    echo -e "系统优化成功！"

WORKDIR /home
RUN curl -L https://github.com/storj/gateway-st/releases/latest/download/gateway_linux_amd64.zip -o /home/gateway_linux_amd64.zip && \
	unzip /home/gateway_linux_amd64.zip && \
	rm -f /home/gateway_linux_amd64.zip && \
	chmod 777 /home/gateway && \

EXPOSE 3000
ENTRYPOINT [ "/home/gateway", "--access", "$access", "--minio.access-key", "$accesskey", "--minio.secret-key", "$secretkey", "--server.address", "0.0.0.0:3000", "--website;" ]
