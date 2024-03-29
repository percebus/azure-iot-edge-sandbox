# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow
# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-connect-downstream-iot-edge-device?view=iotedge-1.4&tabs=azure-cli

set -e
set -v
set -x


# WARNING
# ~ is '/home/iotedge-user'
# But when run as sudo (root)
# it would be '/root'
# So we use './'
cp --verbose -r ./* /


# chmod 755 /var # TODO?

# /var/aziot:
# drwxr-xr-x  4 root    root    4096 .
# drwxr-xr-x 15 root    root    4096 ..
chmod 755 /var/aziot

# Give aziotcs ownership to certificates
# Read and write for aziotcs, read-only for others
#
# /var/aziot/certs:
# drwxr-xr-x 2 aziotcs aziotcs 4096 .
# drwxr-xr-x 4 root    root    4096 ..
# -rw-r--r-- 1 aziotcs aziotcs 1984 azure-iot[-test-only].root.ca.cert.pem
# -rw-r--r-- 1 aziotcs aziotcs 5887 iot-edge-device-ca-{device_id}-full-chain.cert.pem
chown -R aziotcs:aziotcs /var/aziot/certs
chown aziotcs:aziotcs /var/aziot/certs/*.cert.pem
chmod 755 /var/aziot/certs
# chmod 644 /var/aziot/certs/*.pem
find /var/aziot/certs -type f -name "*.*" -exec chmod 644 {} \;

# Give aziotks ownership to private keys
# Read and write for aziotks, no permission for others
#
# /var/aziot/secrets:
# drwx------ 2 aziotks aziotks 4096 .
# drwxr-xr-x 4 root    root    4096 ..
# -rw------- 1 aziotks aziotks 3326 azure-iot[-test-only].root.ca.key.pem
# -rw------- 1 aziotks aziotks 3243 iot-edge-device-ca-{device_id}.key.pem
chown -R aziotks:aziotks /var/aziot/secrets
chmod 700 /var/aziot/secrets
# chmod 600 /var/aziot/secrets/*.key.pem
find /var/aziot/secrets -type f -name "*.*" -exec chmod 600 {} \;

# Verify permissions of directories and files
ls -Rla /var/aziot


# If you've used any other certificates for IoT Edge before,
# delete the files in the following two directories
# to make sure that your new certificates get applied:
# rm -f /var/lib/aziot/certd/certs/* # TODO
# rm -f /var/lib/aziot/keyd/keys/*   # TODO


set +x
set +v
set +e
