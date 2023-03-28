
#######################################################################################################
# docker for the harsshi vault 

docker run --cap-add=IPC_LOCK -e 'VAULT_LOCAL_CONFIG={"storage": {"file": {"path": "/vault/file"}}, "listener": [{"tcp": { "address": "0.0.0.0:8200", "tls_disable": true}}], "default_lease_ttl": "168h", "max_lease_ttl": "720h", "ui": true}' -p 8200:8200 hashicorp/vault server

Initial root token
hvs.GijlZDov1YDYI1NkRFvTlrPH
Key 1
rwEzTafJlOaC44HUogaH44RkBx5qwbIoohK2i1JZQcdV
Key 2
wPlxxyjXbC0hXYUq2fsaDxEhRgWKgb38Ck0kiSvyhI6r
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

 
