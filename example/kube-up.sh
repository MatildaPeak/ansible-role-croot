#!/usr/bin/env bash

NS=croot
if [ ! -d "roles" ]; then
    mkdir roles
    ln -s ../.. roles/matildapeak.${NS}
fi

kubectl create -f namespace.yml
kubectl config set-context --current --namespace=${NS}

ansible-playbook site.yml
