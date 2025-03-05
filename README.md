# TLS Certificate Generation Scripts

Example scripts to generate TLS certificates for home automation scenarios. The `.bat` files can be run on a Windows system with OpenSSL installed.

## Instructions

1. Edit the `req_distinguished_name` and `alt_names` sections of a Certificate Authority configuration file, such as `ca-1024.cnf`
2. Generate the Certificate Authority using a CA script, such as `ca-1024.bat`
3. For endpoint certificates, copy matching files such as `server-1024.cnf` and `server-1024.bat`, edit the copied `.cnf` file to update the `req_distinguished_name` and `alt_names` sections, edit the copied `.bat` file to reference the new `.cnf` file, and then run that `.bat` script to generate the endpoint certificate
4. Repeat the previous step for each endpoint or IOT device that needs a certificate
 
## 1024-Bit Certificates

Small IOT devices often lack the computing power needed to quickly process encryption using 2048-bit or 4096-bit certificates. 1024-bit certficiates are more efficient for such devices while still being secure. At the time of this writing, there are no known exploits for 1024-bit encryption. So, while 1024-bit certificates should never be used on the Internet or other public networks, they are still perfectly viable for isolated networks such as residential or home lab scenarios.

Carefully consider your security requirements before generating and using certificates.

## 2048-Bit Certificates

Larger devices and servers that have more computing power should use at least 2048-bit certificates. Any devices connected to the Internet should also use 2048-bit certificates, including IOT devices.
