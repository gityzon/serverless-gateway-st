#!/bin/sh

#download gateway-st lastest
	curl -L https://github.com/storj/gateway-st/releases/latest/download/gateway_linux_amd64.zip -o /home/gateway_linux_amd64.zip
	cd /home
	unzip gateway_linux_amd64.zip
	rm -f gateway_linux_amd64.zip
	chmod 777 /home/gateway

#run gateway
/home/gateway run --access 1cCYAHUHkDDVrwGZpPDxP8VrzBmLsF8uQwNzNW3zjbSf3bCzTSaZZRtXsS3RUgJnfo1CCPyPa6U6Jf6oKY8vAv11mNpMe7mSJFnTD9kZsisHS29XS3yZ3rcxDFt3coSSw515JGVG6uU4qEpDFcmwdv214rLn6zW8HXfiK7ZjLVPJjQAbrJ2vQQE6b5paZwaLKhpFdyxFeQjMefwRmJSywu9JcMZpCEoH26XtfGawimCtpbzzXadK4dvmbv3jpLfaG4TGuoCX1NEz --minio.access-key $accesskey --minio.secret-key $secretkey --server.address 0.0.0.0:3000 --website
