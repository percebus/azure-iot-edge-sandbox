# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-connect-downstream-iot-edge-device?view=iotedge-1.4&tabs=azure-cli

# !!! For test only - do not use in production !!!

# Create the the root CA test certificate
./certGen.sh create_root_and_intermediate

# Create the parent (gateway) device test certificate
# signed by the shared root CA certificate
./certGen.sh create_edge_device_ca_certificate "gateway"

# Create the downstream device test certificate
# signed by the shared root CA certificate
./certGen.sh create_edge_device_ca_certificate "downstream"
