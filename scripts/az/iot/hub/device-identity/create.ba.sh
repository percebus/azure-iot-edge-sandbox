
device_id=${AZ_IOT_EDGE_DEVICE_ID}
hub_name=${AZ_IOT_HUB_NAME}
auth_method='x509_thumbprint'
primary_thumbprint=${AZ_IOT_EDGE_DEVICE_THUMBPRINT_1}
secondary_thumbprint==${AZ_IOT_EDGE_DEVICE_THUMBPRINT_2}

az iot hub device-identity create ^
  --device-id ${device_id} ^
  --hub-name ${hub_name} ^
  --edge-enabled ^
  --auth-method ${auth_method} ^
  --primary-thumbprint ${primary_thumbprint} ^
  --secondary-thumbprint ${secondary_thumbprint}
