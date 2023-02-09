# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/quickstart?view=iotedge-1.4
# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-test-certificates?view=iotedge-1.4&tabs=windows
# NOTE Run as admin


Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All


# Before
Get-ExecutionPolicy -List

# Set-ExecutionPolicy -ExecutionPolicy AllSigned -Force # TODO?
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# After
Get-ExecutionPolicy -List
