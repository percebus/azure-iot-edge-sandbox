
# TODO replace w/ gulp
# SRC https://learn.microsoft.com/en-us/azure/iot-edge/how-to-connect-downstream-iot-edge-device?view=iotedge-1.4&tabs=azure-cli

device_id="TEST"

rm -rf ./build/
cp -r ./linux/ ${target_folder}/

target_folder='./build/var/aziot'
cp -r ./tmp/certs/root/*.root.ca.cert.pem ${target_folder}/certs

# TODO? RENAME? 'edge-ca.pem'
# As suggested in config.toml.edge.template
cp -r ./tmp/certs/${device_id}/*-ca-*-full-chain.cert.pem ${target_folder}/certs
cp -r ./tmp/certs/${device_id}/*-ca-*.key.pem ${target_folder}/secrets

eflow_folder='./build/etc/pki/ca-trust/source/anchors'


# TODO? RENAME? 'trust-bundle'
# As suggested in config.toml.edge.template
#
# root_ca_cert_short_name='trust-bundle'
# root_ca_cert_full_name="${root_ca_cert_short_name}"

# XXX?
root_ca_cert_short_name='azure-iot'
root_ca_cert_full_name="${root_ca_cert_short_name}.root.ca.cert"

cp ${target_folder}/certs/${root_ca_cert_full_name}.pem ${eflow_folder}/${root_ca_cert_full_name}.pem.crt

linux_folder='./build/usr/local/share'
cp ${eflow_folder}/${root_ca_cert_full_name}.pem.crt ${linux_folder}/${root_ca_cert_full_name}.pem.crt
