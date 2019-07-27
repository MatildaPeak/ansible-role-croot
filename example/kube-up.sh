#!/usr/bin/env bash

if [ ! -d "roles" ]; then
    mkdir roles
    ln -s ../.. roles/matildapeak.croot
fi

kubectl create -f namespace.yml
kubectl config set-context --current --namespace=croot

ansible-playbook site.yaml
