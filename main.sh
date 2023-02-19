#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#！请添加 $access，$accesskey，$secretkey 环境变量后再运行 Gateway-st。
#！注意长度限制：Access key length should be at least 3, and secret key length at least 8 characters
#！如何更新Gateway-st：
#1.删除 gateway 这个程序
#2.重启（refresh）

if [ ! -f "gateway" ];then
  #download gateway-st lastest
  curl -L https://github.com/storj/gateway-st/releases/latest/download/gateway_linux_amd64.zip -o gateway_linux_amd64.zip
  unzip gateway_linux_amd64.zip
  rm -f gateway_linux_amd64.zip
  chmod 777 gateway

fi
#start gateway
./gateway run --access $access --minio.access-key $accesskey --minio.secret-key $secretkey --server.address 0.0.0.0:3000 --website
