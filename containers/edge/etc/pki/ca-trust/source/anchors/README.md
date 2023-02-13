# README

Copy root certificate into the CA certificate directory and add `.crt` extension.

The root certificate must be in the CA certificate directory to install it in the certificate store.

Use the appropriate copy command for your device OS or if using EFLOW.

For **Ubuntu** and **Debian**, use `/usr/local/share/ca-certificates/`

```bash
$> sudo cp azure-iot[-test-only].root.ca.cert.pem /usr/local/share/azure-iot-test-only.root.ca.cert.pem.crt
```

## SRC

[Connect Azure IoT Edge devices together to create a hierarchy (nested edge)](https://learn.microsoft.com/en-us/azure/iot-edge/how-to-connect-downstream-iot-edge-device?view=iotedge-1.4&tabs=azure-portal#configure-parent-device)
