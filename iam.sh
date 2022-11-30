# SSH
## Upload a ssh key pair
aws iam upload-ssh-public-key \
--user-name gitUser \
--ssh-public-key-body file://~/.ssh/id_rsa.pub

## Display it
KEYID=$(aws iam list-ssh-public-keys --user-name gitUser | jq -r '.[] | .[] | .SSHPublicKeyId') && echo $KEYID
