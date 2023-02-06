
mkdir -p tmp/certs/

target_folder='./tmp/certs/all/'
mkdir -p ${target_folder}

cp ./tmp/CACertificates/certs/* ${target_folder}
cp ./tmp/CACertificates/csr/* ${target_folder}
cp ./tmp/CACertificates/private/* ${target_folder}
