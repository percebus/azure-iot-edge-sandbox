[string]$iotHubHostname="JCGuerrero-iot-edge.azure-devices.net"
[string]$deviceId="JCGuerrero-DELL"
[string]$identityCertPath "FIXME\tmp\certs\$deviceId\iot-edge-device-identity-full-chain.cert.pem" `
[string]$identityPrivKeyPath "FIXME\certs\$deviceId\iot-edge-device-identity.key.pem"

Provision-EflowVm `
  -provisioningType ManualX509 `
  -iotHubHostname $iotHubHostname `
  -deviceId $deviceId `
  -identityCertPath $identityCertPath `
  -identityPrivKeyPath $identityPrivKeyPath
