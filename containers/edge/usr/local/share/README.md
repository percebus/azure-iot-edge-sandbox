# README

```
# Copy root certificate into the CA certificate directory and add .crt extension.
# The root certificate must be in the CA certificate directory to install it in the certificate store.
# Use the appropriate copy command for your device OS or if using EFLOW.

# For EFLOW, use /etc/pki/ca-trust/source/anchors/
sudo cp azure-iot-test-only.root.ca.cert.pem /etc/pki/ca-trust/source/anchors/azure-iot-test-only.root.ca.pem.crt
```
