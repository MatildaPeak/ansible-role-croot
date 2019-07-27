Ansible Role - matildapeak.croot
================================

A Role for the installation of the Matilda Peak **croot** application into a
Kubernetes (or OpenShift) cluster.

Requirements
------------

-   Kubernetes or OpenShift 

Role Variables
--------------

    # The croot image tag and pull policy
    image_tag: 2019.2
    image_pull_policy: IfNotPresent

    # The port to expose the croot service on
    service_port: 8080

    # To uninstall from the cluster
    # state: absent
    state: present

    # The namespace (project) to deploy to.
    # When used by an Ansible Operator `meta.name(space)`
    # comes from the custom-resource (CR) metadata.
    namespace: "{{ meta.namespace|default('croot') }}"

Dependencies
------------

-   (none)

Example Playbook
----------------

**NOTE** The example below assumes that you have a running Kubernetes|OpenShift
cluster and that you have sufficient permissions in the `croot` namespace.

    - hosts: servers
      tasks:
      - include_role:
          name: matildapeak.croot
        vars:
          image_tag: latest
          image_pull_policy: Always

>   When deploying to Kubernetes a `croot` namespace is created by default.

License
-------

GPLv3 License

Author Information
------------------

Developed by Matilda Peak for its **Emergent Behaviour Platform** (tm)
