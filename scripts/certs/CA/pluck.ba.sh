
mkdir -p tmp/certs/

target_folder='./tmp/certs/all/'
mkdir -p ${target_folder}

root_CA_cert_short_name='test-only'
root_CA_cert_full_name="azure-iot-${root_CA_cert_short_name}"
cp ./tmp/CACertificates/certs/* ${target_folder}
cp ./tmp/CACertificates/csr/* ${target_folder}
cp ./tmp/CACertificates/private/* ${target_folder}
