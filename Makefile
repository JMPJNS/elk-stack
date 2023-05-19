start-vms:
	vagrant up

deploy-elk:
	ansible-playbook -i ./inventory ./setup-elk.yml

deploy-app:
	ansible-playbook -i ./inventory ./setup-app.yml