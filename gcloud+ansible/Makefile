.PHONY: up
up:
	vagrant up

.PHONY: shell
shell: up
	vagrant ssh

.PHONY: ssh
ssh: shell

.PHONY: halt
halt:
	vagrant halt

.PHONY: provision
provision: up
	vagrant provision

.PHONY: status
status:
	vagrant status

.PHONY: destroy
destroy:
	vagrant destroy
