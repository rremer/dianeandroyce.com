# dianeandroyce.com/cdn

Content Delivery Network resources.

## terraform

To decrypt state and variables:
```sh
cat terraform.tfstate.encrypted | openssl enc -d -base64 | openssl enc -d -aes-256-cbc -nosalt -k $(cat ~/.ssh/id_rsa.pub | openssl enc -base64) > terraform.tfstate
cat variables.tf.encrypted | openssl enc -d -base64 | openssl enc -d -aes-256-cbc -nosalt -k $(cat ~/.ssh/id_rsa.pub | openssl enc -base64) > decrypted-variables.tf
```

To encrypt state and variables before commit:
```sh
openssl enc -aes-256-cbc -nosalt -in terraform.tfstate -k $(cat ~/.ssh/id_rsa.pub | openssl enc -base64) | openssl enc -base64 > terraform.tfstate.encrypted
openssl enc -aes-256-cbc -nosalt -in decrypted-variables.tf -k $(cat ~/.ssh/id_rsa.pub | openssl enc -base64) | openssl enc -base64 > variables.tf.encrypted
```
