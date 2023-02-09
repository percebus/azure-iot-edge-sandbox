# SRC https://learn.microsoft.com/en-us/azure/iot-edge/quickstart?view=iotedge-1.4

[string]$devConnString=FIXME

Provision-EflowVm -provisioningType ManualConnectionString ^
  -devConnString $devConnString
