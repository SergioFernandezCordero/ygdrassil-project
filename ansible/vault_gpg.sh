#!/bin/bash
# Decrypt PGP pass for Ansible Vault using your Private key!
gpg --batch --use-agent --decrypt ygdrassil-secret.txt.pgp 2>/dev/null