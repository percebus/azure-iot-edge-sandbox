
device_id=${AZ_IOT_EDGE_DEVICE_ID}


set -x
set -v
set -e

target_folder="./tmp/certs/${device_id}"
for f in ${target_folder}/*; do
  mv "$f" "$(echo "$f" | sed s/-${device_id}//)";
done

set +e
set +v
set +x
