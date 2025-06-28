# Homelab Automation Makefile

# Run Ansible playbook
ansible:
	cd baseos/ansible && ansible-playbook -i inventory/hosts.yml site.yml

# Run k0sctl to manage k0s cluster
k0s:
	cd baseos/k0s && k0sctl apply --config k0sctl.yaml

k0sreset:
	cd baseos/k0s && k0sctl reset --config k0sctl.yaml

k0sconfig:
	cd baseos/k0s && k0sctl kubeconfig --config k0sctl.yaml > ~/.kube/config
# Deploy with Helmfile
helm:
	cd helm && helmfile -e prod apply

# Run everything in order
all: ansible k0s helm

.PHONY: ansible k0s helm all k0sreset