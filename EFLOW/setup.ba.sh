# SRC https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow

# WARNING
# ~ is /home/iotedge-user
# But when run as sudo (root)
# it would be /root
cp --verbose -r ./* /

chown aziotcs:aziotcs /var/aziot/certs
chown aziotcs:aziotcs /var/aziot/certs/*.cert.pem
chmod 755 /var/aziot/certs

chown aziotks:aziotks /var/aziot/secrets
chmod 700 /var/aziot/secrets
chmod 600 /var/aziot/secrets/*.key.pem

iotedge config apply
