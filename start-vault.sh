#!/bin/bash

vault server -config=./vault/config/config.hcl
# export VAULT_ADDR='http://127.0.0.1:8200'