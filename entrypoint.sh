#!/bin/sh

#download gateway-st lastest
	curl -L https://assets.yzlab.ml/assets/gateway -o /home/gateway
	chmod 777 /home/gateway

#run gateway
/home/gateway run --access $access --minio.access-key $accesskey --minio.secret-key $secretkey --server.address 0.0.0.0:3000 --website
