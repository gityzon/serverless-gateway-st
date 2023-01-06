#!/bin/sh

#download gateway-st lastest
	curl -L https://github.com/storj/gateway-st/releases/latest/download/gateway_linux_amd64.zip -o /home/gateway_linux_amd64.zip
	cd /home
	unzip gateway_linux_amd64.zip
	rm -f gateway_linux_amd64.zip
	chmod 777 /home/gateway

#run gateway
/home/gateway run --access $access --minio.access-key $accesskey --minio.secret-key $secretkey --server.address 0.0.0.0:3000 --website
