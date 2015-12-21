Role Name
=========

Installs and configures Kibana for ELK Stack https://www.elastic.co/products/kibana

Requirements
------------

If setting up a scaled out HA ELK deployment ensure that your kibana node is either running elasticsearch or change the variable for kibana_elasticsearch_url in defaults/main.yml ...Another option (recommended) is to define this variable in your group_vars/group for your ELK group for consistency. 

Role Variables
--------------

````
kibana_dir: /opt
kibana_elasticsearch_url: localhost  #defines where to connect to elasticsearch for kibana...default is localhost...change to fit environment requirements...define here or in group_vars/group
kibana_index: .kibana
kibana_host: 0.0.0.0  #defines Kibana host...should remain as 0.0.0.0 unless other requirements are required...research before changing
kibana_log: /var/log/kibana.log
kibana_log_rotate_count: 5
kibana_log_rotate_interval: daily
kibana_port: 5601
kibana_version: 4.1.3
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
