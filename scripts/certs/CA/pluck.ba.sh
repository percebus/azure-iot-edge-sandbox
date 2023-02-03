
mkdir -p ./tmp/aziot/certs

root_CA_cert_short_name='test-only'
root_CA_cert_full_name="azure-iot-${root_CA_cert_short_name}"
device_CA_cert_short_name='TEST-connectivity'
device_CA_cert_full_name="iot-edge-device-ca-${device_CA_cert_short_name}"

# Copy the root CA certificate
cp ./tmp/CACertificates/certs/${root_CA_cert_full_name}.root.ca.cert.pem ./tmp/aziot/certs/

# Copy the IoT Edge device CA certificate and key
cp ./tmp/CACertificates/certs/${device_CA_cert_full_name}-full-chain.cert.pem ./tmp/aziot/certs/
cp ./tmp/CACertificates/private/${device_CA_cert_full_name}.key.pem ./tmp/aziot/certs/
