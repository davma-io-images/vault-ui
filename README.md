## Vault (HashiCorp) Web UI Docker

</br>

[![Build and push images](https://github.com/davma-io-images/vault-ui/actions/workflows/docker-image.yml/badge.svg)](https://github.com/davma-io-images/vault-ui/actions/workflows/docker-image.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/davma/vault-ui?logo=docker&logoColor=white)](https://hub.docker.com/r/davma/vault-ui) 


## 1. Requirements

1. [Docker](https://docs.docker.com/get-docker/)

## 2. Docker pull

You can download the full image from [Docker Hub](https://hub.docker.com/) with the following command.

````
docker pull davma/vault-ui:latest
````

## 3. Access to Vault

Visiting ``http://localhost:8200/ui`` in a browser loads the Vault UI, where:

- Select the number of keys needed to unlock the vault
- Have to download the json file with the keys

Now you can access to unlock the vault

You can access the most complete training on the [HashiCorp Vault website](https://learn.hashicorp.com/collections/vault/getting-started-ui)

## 4. Image build

You can run the image build with the following commands

````
git clone https://github.com/davma-io-images/vault-ui
cd vault-ui
docker build -t vault-ui .
````

## 5.Documentation and guides

[Vault Docs](https://www.vaultproject.io/docs) 

[Tutorials](https://learn.hashicorp.com/vault)



