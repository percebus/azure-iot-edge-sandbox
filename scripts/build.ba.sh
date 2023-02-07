
# TODO replace w/ gulp

rm -rf ./build/
cp -r ./EFLOW/ ./build/

target_folder='./build/var/aziot'
cp -r ./tmp/certs/root-ca/*.root.ca.cert.pem ${target_folder}/certs

device_id="TEST-gateway"
cp -r ./tmp/certs/${device_id}/*-ca-*-full-chain.cert.pem ${target_folder}/certs
cp -r ./tmp/certs/${device_id}/*-ca-*.key.pem ${target_folder}/secrets

eflow_folder='./build/etc/pki/ca-trust/source/anchors'
root_ca_cert_short_name='azure-iot'
root_ca_cert_full_name="${root_ca_cert_short_name}.root.ca.cert"
cp ${target_folder}/certs/${root_ca_cert_full_name}.pem ${eflow_folder}/${root_ca_cert_full_name}.pem.crt

linux_folder='./build/usr/local/share'
cp ${eflow_folder}/${root_ca_cert_full_name}.pem.crt ${linux_folder}/${root_ca_cert_full_name}.pem.crt
