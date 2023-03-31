export VAULT_ADDR='https://127.0.0.1:8200'
export VAULT_ADDR='http://127.0.0.1:8200'

#######################################################################################################
# docker for the harsshi vault 

docker run --cap-add=IPC_LOCK -e 'VAULT_LOCAL_CONFIG={"storage": {"file": {"path": "/vault/file"}}, "listener": [{"tcp": { "address": "0.0.0.0:8200", "tls_disable": true}}], "default_lease_ttl": "168h", "max_lease_ttl": "720h", "ui": true}' -p 8200:8200 hashicorp/vault server

Initial root token
hvs.GijlZDov1YDYI1NkRFvTlrPH

Key 1
rwEzTafJlOaC44HUogaH44RkBx5qwbIoohK2i1JZQcdV
Key 2
wPlxxyjXbC0hXYUq2fsaDxEhRgWKgb38Ck0kiSvyhI6r

***********************
user sidd
password sidd
***********************
vault operator unseal 
# login to the vault
vault login

# enable the kv-v2 secrets engine at the secret/ path
vault secrets enable -path=/secret kv-v2
vault kv put secret/dev/myteam/myservice first-value=sup3r
vault kv get secret/dev/myteam/myservice
# for the version 2
vault kv get -version=2 secret/dev/myteam/myservice

# 
# Time-based One-Time Password (TOTP)

# 
# create a new policy kv2
vault policy write kv2 kv2.hcl



# enable the userpass auth method
vault auth enable userpass

# create a user named sidd
vault write auth/userpass/users/sidd password=sidd policies=default

# login as sidd
vault login -method=userpass username=sidd password=sidd

# create a secret
vault kv put secret/hello foo=world

api calls 
curl -X POST -H "X-Vault-Token: hvs.GijlZDov1YDYI1NkRFvTlrPH" -H "Content-Type: application/json" -d '{"password": "sidd"}' http://localhost:8200/v1/auth/userpass/users/sidd

#################################################################################################33



# Description:  Harshi Vault
https://www.digitalocean.com/community/tutorials/how-to-securely-manage-secrets-with-hashicorp-vault-on-ubuntu-20-04

# create the harshi vault
vault secrets enable -path=harshi kv

# set the harshi vault 
vault 
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install vault
vault --version 

# create the admin user
 vault server -help

 
