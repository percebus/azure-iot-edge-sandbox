# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow
# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-connect-downstream-iot-edge-device?view=iotedge-1.4&tabs=azure-cli

# WARNING
# ~ is '/home/iotedge-user'
# But when run as sudo (root)
# it would be '/root'
# So we use './'
cp --verbose -r ./* /

# Give aziotcs ownership to certificates
# Read and write for aziotcs, read-only for others
chown -R aziotcs:aziotcs /var/aziot/certs
chown aziotcs:aziotcs /var/aziot/certs/*.cert.pem
chmod 755 /var/aziot/certs
find /var/aziot/certs -type f -name "*.*" -exec chmod 644 {} \;

# Give aziotks ownership to private keys
# Read and write for aziotks, no permission for others
chown -R aziotks:aziotks /var/aziot/secrets
chmod 700 /var/aziot/secrets
chmod 600 /var/aziot/secrets/*.key.pem
find /var/aziot/secrets -type f -name "*.*" -exec chmod 600 {} \;

# Verify permissions of directories and files
ls -Rla /var/aziot


# If you've used any other certificates for IoT Edge before,
# delete the files in the following two directories
# to make sure that your new certificates get applied:
# rm -f /var/lib/aziot/certd/certs/* # TODO
# rm -f /var/lib/aziot/keyd/keys/*   # TODO
