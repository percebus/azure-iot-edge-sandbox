[string]$deviceId = "TEST-gateway"

# IoT Edge Device
New-CACertsEdgeDeviceIdentity $deviceId
New-CACertsEdgeDeviceCA "$deviceId-1"
New-CACertsEdgeDeviceCA "$deviceId-2"
