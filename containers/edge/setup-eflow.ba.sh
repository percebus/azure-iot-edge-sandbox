
set -e
set -v
set -x


bash ./setup.ba.sh

# For EFLOW, use update-ca-trust
update-ca-trust


set +x
set +v
set +e
