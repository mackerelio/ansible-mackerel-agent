ANSIBLE_CMD         				 = ansible
ANSIBLE_PLAYBOOK_CMD         = ansible-playbook
ANSIBLE_LOCAL_INVENTORY_FILE = inventories/dev
ANSIBLE_LOCAL_PLAYBOOK_FILE  = dev.yml

# for Centos
#	http://d.hatena.ne.jp/tagomoris/20140318/1395118495
ANSIBLE_TRANSPORT=ssh
ANSIBLE_SSH_ARGS=""
ANSIBLE_SCP_IF_SSH=true

run: run-playbook-dev

run-playbook-dev:
	ansible all --ask-sudo-pass -s --inventory-file $(ANSIBLE_LOCAL_INVENTORY_FILE) -m raw -a "[ -e /usr/bin/yum ] && yum install -y python-simplejson" || true # https://github.com/ansible/ansible/issues/1529
	$(ANSIBLE_PLAYBOOK_CMD) --ask-sudo-pass --inventory-file $(ANSIBLE_LOCAL_INVENTORY_FILE) $(ANSIBLE_LOCAL_PLAYBOOK_FILE)

syntax:
	$(ANSIBLE_PLAYBOOK_CMD) --syntax-check --inventory-file $(ANSIBLE_LOCAL_INVENTORY_FILE) $(ANSIBLE_LOCAL_PLAYBOOK_FILE)

check:
	$(ANSIBLE_PLAYBOOK_CMD) --check --inventory-file $(ANSIBLE_LOCAL_INVENTORY_FILE) $(ANSIBLE_LOCAL_PLAYBOOK_FILE)

test: syntax check
