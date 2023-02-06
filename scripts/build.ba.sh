
# TODO replace w/ gulp

rm -rf ./build/
cp -r ./EFLOW/ ./build/

target_folder='./build/var/aziot'
cp -r ./tmp/certs/root-ca/*.root.ca.cert.pem ${target_folder}/certs

device_id="TEST-gateway"
cp -r ./tmp/certs/${device_id}/*-ca-*-full-chain.cert.pem ${target_folder}/certs
cp -r ./tmp/certs/${device_id}/*-ca-*.key.pem ${target_folder}/secrets
