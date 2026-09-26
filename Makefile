# --- vendored makefile framework (make vendor) ---
# Standalone definitions: this Makefile does not require the globally
# linked make (update: make vendor <this path>; remove: delete this block
# and .makefile/vendor/rosinfotech/).

define resolve_script
$(if $(wildcard $(CURDIR)/.makefile/$(1)),$(CURDIR)/.makefile/$(1),$(CURDIR)/.makefile/vendor/rosinfotech/$(1))
endef

.DEFAULT_GOAL := echo
.PHONY: echo init clear git_commit git_commit_push git_commit_version kill_processes setup version_show version_update
.SILENT: echo init clear git_commit git_commit_push git_commit_version kill_processes setup version_show version_update

init:
	chmod +x $(wildcard $(CURDIR)/.makefile/*.sh) $(wildcard $(CURDIR)/.makefile/vendor/rosinfotech/*.sh)

echo: init
	GLOBAL_ROOT="$(CURDIR)/.makefile/vendor/rosinfotech" $(call resolve_script,echo.sh)

clear: init
	$(call resolve_script,clear.sh)

git_commit: init
	$(call resolve_script,git_commit.sh) "$(filter-out $@,$(MAKECMDGOALS))"

git_commit_push: init
	$(call resolve_script,git_commit_push.sh) "$(filter-out $@,$(MAKECMDGOALS))"

git_commit_version: init
	$(call resolve_script,git_commit_version.sh) "$(filter-out $@,$(MAKECMDGOALS))"

kill_processes: init
	$(call resolve_script,kill_processes.sh)

setup: init
	$(call resolve_script,setup.sh)

version_show: init
	$(call resolve_script,version_show.sh)

version_update: init
	$(call resolve_script,version_update.sh)

# --- end vendored makefile framework ---

