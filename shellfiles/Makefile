.PHONY: all zsh bash aliases
SHELL := /bin/bash
# Create symlinks for shell configuration files

# zsh and bash configuration files.

all: zsh bash aliases readline

aliases:
	# Use same aliases in bash and zsh.
	@ln -vsfn $(CURDIR)/aliases $(HOME)/.aliases

readline:
	# Create symlink for readline config file.
	@for file in inputrc; do\
		ln -vsfn $(CURDIR)/$$file $(HOME)/.$$(basename $(CURDIR)/$$file);\
	done

zsh: aliases
	#
	# For zsh grml-zsh (https://grml.org/zsh) is used as a base configuration
	# Check if distribution has grml-zsh available and use it, else download it.
	# (on arch linux grml-zsh-config package provides it)
	@if grep -q -m1 grml /etc/zsh/zshrc;\
	then\
		cp -v /etc/zsh/zshrc $(CURDIR)/zshrc;\
	elif ! grep -q -m1 grml $(CURDIR)/zshrc;\
	then\
		curl -L -o $(CURDIR)/zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc;\
	fi
	#
	# Create symlinks for zsh config files.
	@for file in zshrc zshrc.local zshrc.pre zprofile; do\
		ln -vsfn $(CURDIR)/$$file $(HOME)/.$$(basename $(CURDIR)/$$file);\
	done

bash: aliases
	#
	# Create symlinks for bash config files
	@for file in bashrc bash_profile; do\
		ln -vsfn $(CURDIR)/$$file $(HOME)/.$$(basename $(CURDIR)/$$file);\
	done
