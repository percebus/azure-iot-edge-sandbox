
hub_name=${AZ_IOT_HUB_NAME}
device_id=${AZ_IOT_EDGE_DEVICE_ID}
auth_method='x509_thumbprint'
primary_thumbprint=${AZ_IOT_EDGE_DEVICE_THUMBPRINT_1}
secondary_thumbprint=${AZ_IOT_EDGE_DEVICE_THUMBPRINT_2}


set -e
set -v
set -x

az iot hub device-identity create --edge-enabled \
  --device-id ${device_id} \
  --hub-name ${hub_name} \
  --auth-method ${auth_method} \
  --primary-thumbprint ${primary_thumbprint} \
  --secondary-thumbprint ${secondary_thumbprint}


az iot hub device-identity connection-string show \
  --hub-name ${hub_name} \
  --device-id ${device_id}


az iot hub device-identity list --hub-name ${hub_name}

set +x
set +v
set +e
