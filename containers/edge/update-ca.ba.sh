
# SRC: https://docs.cloudbees.com/docs/cloudbees-codeship/latest/basic-builds-and-configuration/run-command-if-other-fails
# fallback
update-ca-certificates || (update-ca-trust && exit 1)
