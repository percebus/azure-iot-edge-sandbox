# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/troubleshoot?view=iotedge-1.4

hub_name=${AZ_IOT_HUB_NAME}
device_id=${AZ_IOT_EDGE_DEVICE_ID}


set -e
set -v
set -x

az iot hub module-twin show \
  --hub-name ${hub_name} \
  --device-id ${device_id} \
  --module-id '$edgeHub'

set +x
set +v
set +e
