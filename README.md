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
mackerel_install_mkr: yes # default: no
mackerel_agent_plugins:
  jvm: "/usr/bin/mackerel-plugin-jvm -javaname=NettyServer"
mackerel_agent_include: "/etc/mackerel-agent/conf.d/*.conf"

mackerel_check_plugins:
  check_cron: "/usr/bin/check-procs -p crond"
  uptime:
    command: "check-uptime --warning-under=600 --critical-under=120"
    notification_interval: 10
    max_check_attempts: 3
    check_interval: 5
    timeout_seconds: 45
    prevent_alert_auto_close: true
    action:
      command: "ruby /path/to/notify_something.rb"
    memo: "This check monitor is ..."
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
    - mackerelio.mackerel-agent
```

How to test
-----------

Test cases are defined in [test.yml](tests/test.yml). To add a new test:

- Add a test case in tests/test.yml. The case name is defined in `tags`.
- Run `./tests/run -w test_case_name`. This command will generate `tests/cases/test_case_name` directory.
- Check `./tests/run` command to exit with 0.
- Run `git add tests/` and commit.

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

