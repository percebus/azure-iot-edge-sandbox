[string]$deviceId = "TEST-connectivity"

# IoT Edge Device
New-CACertsEdgeDeviceCA $deviceId
New-CACertsEdgeDeviceIdentity $deviceId
