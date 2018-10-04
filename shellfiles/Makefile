.PHONY: all zsh bash aliases
SHELL := /bin/bash

all: zsh bash aliases

aliases:
	# use same aliases in bash and zsh
	@ln -vsfn aliases ~/.aliases

zsh: aliases
	#
	# For zsh grml-zsh (https://grml.org/zsh) is used as a base configuration
	# Check if distribution has grml-zsh available and use it, else download it.
	# (on arch linux grml-zsh-config package provides it)
	@if grep -q -m1 grml /etc/zsh/zshrc;\
	then\
		ln -vsfn /etc/zsh/zshrc ~/.zshrc;\
	elif [ -f $(CURDIR)/zshr ];\
	then\
		curl -L -o $(CURDIR)/zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc;\
	fi
	#
	# Create symlinks for zsh config files
	@for file in zshrc zshrc.local zshrc.pre zprofile; do\
		ln -vsfn $$file ~/.$$(basename $$file);\
	done

bash: aliases
	#
	# Create symlinks for bash config files
	@for file in bashrc bash_profile; do\
		ln -vsfn $$file ~/.$$(basename $$file);\
	done
