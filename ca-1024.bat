REM 10-year CA with SHA256 and 1024-bit for smaller ESP32/IOT devices
openssl req -x509 -sha256 -days 3650 -nodes -newkey rsa:1024 -config ca-1024.cnf -extensions v3_req -keyout ca-1024.key -out ca-1024.crt
