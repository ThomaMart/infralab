TF_DIR=terraform/docker

.PHONY: fmt validate plan apply destroy check

fmt:
	cd $(TF_DIR) && terraform fmt

validate:
	cd $(TF_DIR) && terraform validate

plan:
	cd $(TF_DIR) && terraform plan

apply:
	cd $(TF_DIR) && terraform apply

destroy:
	cd $(TF_DIR) && terraform destroy

check: fmt validate plan
