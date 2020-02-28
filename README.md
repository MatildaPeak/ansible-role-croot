Ansible Role - matildapeak.croot
================================

A Role for the installation of the Matilda Peak **croot** application into a
Kubernetes (or OpenShift) cluster.

Requirements
------------

-   Kubernetes or OpenShift 

Role Variables
--------------

    # Sentry Data Source Name (DSN).
    # This is sensitive, it's optional.
    # The user needs to define it if events are to be passed to Sentry.
    # See https://sentry.io
    sentry_dsn: ''

    # The croot image tag and pull policy
    image_tag: stable
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

**NOTE** The example below assumes that you have a running Kubernetes or OpenShift
cluster and that you have sufficient permissions in the `croot` namespace.

    - hosts: servers
      tasks:
      - include_role:
          name: matildapeak.croot
        vars:
          image_tag: latest
          image_pull_policy: Always

License
-------

GPLv3 License

Author Information
------------------

Developed by Matilda Peak for its **Emergent Behaviour Platform** (tm)
