# SRC https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow

sudo chown aziotcs:aziotcs /var/aziot/certs
sudo chmod 755 /var/aziot/certs
sudo chown aziotcs:aziotcs /var/aziot/certs/*.cert.pem

sudo chown aziotks:aziotks /var/aziot/secrets
sudo chmod 700 /var/aziot/secrets
sudo chmod 600 /var/aziot/secrets/*.key.pem
