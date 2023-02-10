
# port='443'
# port='5671'
# port='8883'

listenaddress='0.0.0.0'
eflow_address=FIXME


set -e
set -x
set -v

# https://stackoverflow.com/questions/72008476/exposing-azure-iot-edge-eflow-ports-to-host-machinewindows
netsh interface portproxy add v4tov4 \
  listenport=${port} listenaddress=${listenaddress} \
  connectport=${port} connectaddress=${eflow_address}

set +v
set +x
set +e
