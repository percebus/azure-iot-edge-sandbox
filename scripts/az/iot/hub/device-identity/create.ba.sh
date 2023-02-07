
device_id='FIXME'
hub_name='FIXME'
auth_method='x509_thumbprint'
primary_thumbprint='FIXME'
secondary_thumbprint='FIXME'

az iot hub device-identity create ^
  --device-id ${device_id} ^
  --hub-name ${hub_name} ^
  --edge-enabled ^
  --auth-method ${auth_method} ^
  --primary-thumbprint ${primary_thumbprint} ^
  --secondary-thumbprint ${secondary_thumbprint}
