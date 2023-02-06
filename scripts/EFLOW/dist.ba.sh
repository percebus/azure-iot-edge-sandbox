
rm -rf ./tmp/EFLOW/
cp -r ./EFLOW/ ./tmp/

target_folder='./tmp/EFLOW/var/aziot'
cp -r ./tmp/certs/root-ca/*.root.ca.cert.pem ${target_folder}/certs

device_id="TEST-gateway"
cp -r ./tmp/certs/${device_id}/*-ca-*-full-chain.cert.pem ${target_folder}/certs
cp -r ./tmp/certs/${device_id}/*-ca-*.key.pem ${target_folder}/secrets

tar -cfzv ./dist/eflow.tar ./tmp/EFLOW/
