
# TODO use gulp instead

mkdir -p tmp/certs/

target_folder='./tmp/certs/all'
rm -rf ${target_folder}
mkdir -p ${target_folder}


set -x
set -v
set -e

source_folder='./CACertificates'
cp ${source_folder}/certs/* ${target_folder}/
cp ${source_folder}/csr/* ${target_folder}/
cp ${source_folder}/private/* ${target_folder}/

for f in ${target_folder}/*; do
  mv "$f" "$(echo "$f" | sed s/-test-only//)"
done

set +e
set +v
set +x
