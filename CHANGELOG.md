mackerel-agent role CHANGELOG
=================================
This file is used to list changes made in each version of the mackerel-agent role.

v0.12.0
-------
- s/categories/galaxy_tags/ (by rmatsuoka)
- Modify for Amazon Linux 2023 (by yuichisatake)

v0.11.0
-------

- Change `include` to `include_tasks` #38 (by kamicup)
- Support Amazon Linux 2023 #39 (by rmatsuoka)
- Raise minimum ansible version #41 (by rmatsuoka)

v0.10.0
-------

- Support arm64 platform with apt v2 repository #33 (by lufia)
- Suppress excessive `changed` message on Amazon Linux 2 #34 (by ikuwow)
- Fix for supporting RHEL 8 #35 (by zyun-i)

v0.9.0
------

- Add check plugin items #29 (by yuichisatake)
- Fix errors at check mode #31 (by Subaru365)

v0.8.4
------

- Add tasks for install mkr command #23 (by yukirii)
- Enforce English response #25 (by ryosms)
- Support check plugin action #26 (by Kuchitama)

v0.8.3
------

- Improve playbook syntax #22 (by hayajo)
- Constrain v2 packages to amd64 #21 (by hayajo)

v0.8.2
------
- Fix README #20 (by hayajo)

v0.8.1
------
- Fix for supporting Amazon Linux 2018.03 #19 (by hayajo)

v0.8.0
------
- Support Amazon Linux 2 #16 (by hayajo)
- Support v2 packages #15 (by hayajo)
- New URL for GPG-KEY-mackerel #14 (by astj)
- Fix Mackerel plugins path to /usr/bin #13 (by tanakahisateru)

v0.7.0
------
- Allow to specify options for check plugins #12 (by syou6162)

v0.6.0
------
- Enable to edit display-name from role variables. #8 (by attakei)
- Add mackerel_agent_start_on_setup. #10 (by buzztaiki)

v0.5.0
------
- Add AmazonLinux "mackerel.repo". #7 (by takeshinoda)

v0.4.0
------
- Add task to install check plugins #6 (by Kuchitama)

v0.3.0
------
- add AmazonLinux to target distributions #3 (by Kuchitama)
- Add installation plugins #4 (by Kuchitama)

v0.2.0
------
- Add "include" to conf template (by xorphitus)
- modify ansible_distribution (by mosuke5)

v0.1.0
------
- Development release
