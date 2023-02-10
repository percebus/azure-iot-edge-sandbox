
set -e
set -v
set -x


bash ./setup.ba.sh

# For Ubuntu and Debian, use update-ca-certificates command
update-ca-certificates


set +x
set +v
set +e
