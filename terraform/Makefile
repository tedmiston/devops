.PHONY: format
format:
	terraform fmt -recursive

.PHONY: plan
plan:
	terraform validate && terraform init && terraform plan

.PHONY: apply
apply:
	terraform init && terraform apply
