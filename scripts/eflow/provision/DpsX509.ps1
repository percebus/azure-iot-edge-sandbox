# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-provision-devices-at-scale-linux-on-windows-x509?view=iotedge-1.4&tabs=individual-enrollment

[string]$scopeId=FIXME
[string]$deviceId=FIXME
[string]$registrationId=$deviceId
[string]$projectFolder=FIXME
[string]$certsFolder="$projectFolder\tmp\certs\$deviceId"
[string]$identityCertPath="$certsFolder\iot-edge-device-identity-full-chain.cert.pem"
[string]$identityPrivKeyPath="$certsFolder\iot-edge-device-identity.key.pem"

echo "scopeId = '$scopeId'"
echo "registrationId = '$registrationId'"
echo "projectFolder = '$projectFolder'"
echo "certsFolder = '$certsFolder'"
echo "identityCertPath = '$identityCertPath'"
echo "identityPrivKeyPath = '$identityPrivKeyPath'"
echo "\n\n"

Provision-EflowVm -provisioningType DpsX509 `
  -scopeId "$scopeId" `
  -registrationId "$registrationId" `
  -identityCertPath "$identityCertPath" `
  -identityPrivKeyPath "$identityPrivKeyPath"
