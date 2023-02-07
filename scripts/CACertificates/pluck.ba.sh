
mkdir -p tmp/certs/

target_folder='./tmp/certs/all/'
mkdir -p ${target_folder}

source_folder='./CACertificates'
cp ${source_folder}/certs/* ${target_folder}
cp ${source_folder}/csr/* ${target_folder}
cp ${source_folder}/private/* ${target_folder}
