all_dirs = $(shell echo "roles/$(role)/{defaults,files,handlers,library,meta,tasks,templates,vars}")
main_dirs = $(shell echo "roles/$(role)/{defaults,handlers,meta,tasks,vars}")

all: setup provision

setup:
	@echo "-----> Running setup script"
	@sh ./scripts/setup.sh

provision:
	@echo "-----> Running ansible playbook to provision system..."
	@echo "-----> What flavor setup would you like?"
	@read input; \
	echo "-----> Continuing provision with $$input.yml..."; \
  HOMEBREW_CASK_OPTS="--appdir=/Applications" \
		time ansible-playbook $$input.yml --diff

role:
	@if [ "$($@)" = "" ]; then echo "Role is not defined. Pass role=rolename"; exit 1; fi
	@mkdir -p $(all_dirs)
	@touch $(main_dirs)/main.yml
	@for dirname in defaults handlers meta tasks vars; do \
		echo "---\n# $(role) $$dirname\n" > ./roles/$(role)/$$dirname/main.yml ;\
	done

.PHONY: all, role, setup, provision
