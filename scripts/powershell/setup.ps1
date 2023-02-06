# SRC https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-test-certificates?view=iotedge-1.4&tabs=windows
# NOTE Run as admin

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Load CA Certs functions
. .\ca-certs.ps1

Test-CACertsPrerequisites
