.PHONY: format
format:
	terraform validate && terraform fmt -recursive

.PHONY: plan
plan:
	terraform init && terraform plan

.PHONY: apply
apply:
	terraform init && terraform apply
