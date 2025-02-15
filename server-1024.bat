REM 10-year server cert with SHA256 and 1024-bit for smaller ESP32/IOT devices
openssl genrsa -out server-1024.key 1024
openssl req -new -key server-1024.key -out server-1024.csr -config server-1024.cnf
openssl x509 -req -in server-1024.csr -CA ca-1024.crt -CAkey ca-1024.key -CAcreateserial -out server-1024.crt -days 3560 -sha256 -extensions v3_req -extfile server-1024.cnf
