[string]$iotHubHostname=FIXME
[string]$deviceId=FIXME
[string]$projectFolder=FIXME
[string]$certsFolder="$projectFolder\tmp\certs\$deviceId"
[string]$identityCertPath="$certsFolder\iot-edge-device-identity-full-chain.cert.pem"
[string]$identityPrivKeyPath="$certsFolder\iot-edge-device-identity.key.pem"

Provision-EflowVm `
  -provisioningType ManualX509 `
  -iotHubHostname $iotHubHostname `
  -deviceId $deviceId `
  -identityCertPath $identityCertPath `
  -identityPrivKeyPath $identityPrivKeyPath
