
```
# Copy root certificate into the CA certificate directory and add .crt extension.
# The root certificate must be in the CA certificate directory to install it in the certificate store.
# Use the appropriate copy command for your device OS or if using EFLOW.

# For Ubuntu and Debian, use /usr/local/share/ca-certificates/
sudo cp azure-iot-test-only.root.ca.cert.pem /usr/local/share/azure-iot-test-only.root.ca.cert.pem.crt
```
