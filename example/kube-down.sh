#!/usr/bin/env bash

NS=croot
if [ ! -d "roles" ]; then
    mkdir roles
    ln -s ../.. roles/matildapeak.${NS}
fi

ansible-playbook site.yml -e state=absent

kubectl delete namespace/${NS}
