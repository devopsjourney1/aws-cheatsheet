
# Upload a ssh key pair
aws iam upload-ssh-public-key \
--user-name gitUser \
--ssh-public-key-body file://~/.ssh/id_rsa.pub
