REM 10-year server cert with SHA256 and 2048-bit
openssl genrsa -out server-2048.key 2048
openssl req -new -key server-2048.key -out server-2048.csr -config server-2048.cnf
openssl x509 -req -in server-2048.csr -CA ca-2048.crt -CAkey ca-2048.key -CAcreateserial -out server-2048.crt -days 3560 -sha256 -extensions v3_req -extfile server-2048.cnf
