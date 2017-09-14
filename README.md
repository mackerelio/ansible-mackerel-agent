ansible-mackerel-agent
======================

An Ansible role for installing mackerel-agent and official plugins.

### Official Plugins

* [mackerelio/mackerel-agent-plugins](https://github.com/mackerelio/mackerel-agent-plugins)
* [mackerelio/go-check-plugins](https://github.com/mackerelio/go-check-plugins)


Requirements & Dependencies
---------------------------

- Tested on Ansible 1.8.2 or higher

Role Variables
--------------

```yml
mackerel_agent_apikey: "yourapikey"

# optional
mackerel_agent_pidfile: "/var/run/mackerel-agent.pid"
mackerel_agent_root: "/var/lib/mackerel-agent"
mackerel_agent_roles:
  - "My-Service:app"
  - "Another-Service:db"
mackerel_agent_display_name: "My host"
mackerel_use_plugins: yes # default: no
mackerel_agent_plugins:
  jvm: "/usr/local/bin/mackerel-plugin-jvm -javaname=NettyServer"

mackerel_check_plugins:
  check_cron: "/usr/local/bin/check-procs -p crond"
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yml
- 
  hosts: Hatena-Antenna2_backend
  vars:
    - mackerel_agent_apikey: "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    - mackerel_agent_roles:
      - "My-Service:app"
      - "Another-Service:db"
  roles:
    - mackerel-agent
```

License
-------

Copyright:: 2015 Hatena Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

