REM 10-year CA with SHA256 and 2048-bit
openssl req -x509 -sha256 -days 3650 -nodes -newkey rsa:2048 -config ca-2048.cnf -extensions v3_req -keyout ca-2048.key -out ca-2048.crt
