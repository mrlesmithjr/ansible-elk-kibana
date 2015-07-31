Role Name
=========

Installs and configures Kibana for ELK Stack https://www.elastic.co/products/kibana

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

````
kibana_dir: /opt
kibana_host: 0.0.0.0  #defines Kibana host...should remain as 0.0.0.0 unless other requirements are required...research before changing
kibana_index: .kibana
kibana_log: /var/log/kibana.log
kibana_log_rotate_count: 5
kibana_log_rotate_interval: daily
kibana_port: 5601
kibana_version: 4.1.1
````

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: mrlesmithjr.elk-kibana }

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- @mrlesmithjr
- http://everythingshouldbevirtual.com
- mrlesmithjr [at] gmail.com
