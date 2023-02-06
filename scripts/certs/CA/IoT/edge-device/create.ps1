# [string]$deviceId = "TEST-gateway"
[string]$deviceId = "TEST-connectivity"

# IoT Edge Device

# Create identity certificate for the IoT Edge device
New-CACertsEdgeDeviceIdentity $deviceId

# Create edge CA certificates
New-CACertsEdgeDeviceCA $deviceId
