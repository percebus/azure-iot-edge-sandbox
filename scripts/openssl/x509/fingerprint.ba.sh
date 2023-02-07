
ca_cert_name='iot-edge-device-ca'
cert_file="${ca_cert_name}.cert.pem"
x509_file="${ca_cert_name}.cert.pem.x509.txt"
openssl x509 -in ${ca_cert_file} -text -fingerprint > ${x509_file}

fingerprint_file="${ca_cert_name}.cert.pem.fingerprint.x509.txt"

# Extract "Fingerprint" from file
# FIXME use an -out flag of sorts, instead of >
fingerprint=$(grep -F "Fingerprint" ${x509_file} | cut -d ' ' -f 2 | cut -d '=' -f 2)
echo "Fingerprint=${fingerprint}"
echo ${fingerprint} | sed 's/[:]//g' > ${fingerprint_file}
