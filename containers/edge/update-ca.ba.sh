
# SRC: https://docs.cloudbees.com/docs/cloudbees-codeship/latest/basic-builds-and-configuration/run-command-if-other-fails
# fallback

set +e
set -v
set -x

update-ca-certificates || (update-ca-trust && exit 1)

set +x
set +v
# set +e
