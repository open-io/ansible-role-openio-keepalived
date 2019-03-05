OpenIO keepalived
=================

The role installs and configures keepalived.

Requirements
------------

None.

Role Variables
--------------

* `instance_interface` is the interface bound by vrrp.
* `instance_pwd` is the password for accessing vrrpd.

Examples
--------

### group_vars/dc-equinix-he6.yml

```
keepalived_global_defs_notification_email: support@example.com
keepalived_global_defs_notification_email_from: "localhost@example.com"

instance_pwd: !vault |
          $ANSIBLE_VAULT;1.1;AES256
          something

instance_vip: 10.23.3.245
```

### host_vars/rfs1.eqhe6.relex.fi.yml

```
instance_state: MASTER
instance_priority: "200"
```

### host_vars/rfs2.eqhe6.relex.fi.yml

```
instance_priority: "150"
```

Limitations
-----------

Seems like the current way of denifining vrrp instances—using a dictionary of
dictionaries—isn't very elegant and smart. Need to figure out if there is a
better approach.

License
-------

GNU

Author Information
------------------

OpenIO
