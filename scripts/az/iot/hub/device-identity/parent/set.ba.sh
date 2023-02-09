# SRC: https://learn.microsoft.com/en-us/cli/azure/iot/hub/device-identity/parent?view=azure-cli-latest#az-iot-hub-device-identity-parent-show

hub_name=${AZ_IOT_HUB_NAME}
device_id=${AZ_IOT_EDGE_DEVICE_ID}
parent_device_id=${AZ_IOT_EDGE_DEVICE_PARENT_ID}


set -e
set -v
set -x

az iot hub device-identity parent set \
    --hub-name ${hub_name} \
    --device-id ${device_id} \
    --parent-device-id ${parent_device_id}

# Confirmation
az iot hub device-identity parent show \
    --hub-name ${hub_name} \
    --device-id ${device_id}

set +x
set +v
set +e
