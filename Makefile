################################################################################
# InfraLab
################################################################################

TF_DIR=terraform/proxmox

PROXMOX_HOST=proxmox
REMOTE_DIR=/root/infralab

################################################################################

.PHONY: \
	fmt \
	validate \
	plan \
	apply \
	destroy \
	check \
	template

################################################################################

fmt:
	cd $(TF_DIR) && terraform fmt -recursive

validate:
	cd $(TF_DIR) && terraform validate

plan:
	cd $(TF_DIR) && terraform plan

apply:
	cd $(TF_DIR) && terraform apply

destroy:
	cd $(TF_DIR) && terraform destroy

check: fmt validate plan

################################################################################

template:

	@echo ""
	@echo "==> Preparing remote directory..."
	@ssh $(PROXMOX_HOST) "mkdir -p $(REMOTE_DIR)"

	@echo ""
	@echo "==> Copying files..."
	@scp scripts/build-debian-template.sh $(PROXMOX_HOST):$(REMOTE_DIR)/
	@scp scripts/template.env $(PROXMOX_HOST):$(REMOTE_DIR)/

	@echo ""
	@echo "==> Building Debian Golden Template..."
	@ssh $(PROXMOX_HOST) "\
		chmod +x $(REMOTE_DIR)/build-debian-template.sh && \
		$(REMOTE_DIR)/build-debian-template.sh"

	@echo ""
	@echo "✔ Debian Golden Template completed."
