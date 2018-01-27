.PHONY: all full basic plugins

all: full

full: basic plugins

basic:
	#
	# Create config directory for neovim
	#***********************************
	mkdir -vp $(HOME)/.config/nvim;
	#
	# Symlink configuration files
	#**********************************
	@ln -vsfn $(CURDIR)/init.vim $(HOME)/.config/nvim/init.vim
	#
	# Copy stuff
	#***********
	@cp -vr $(CURDIR)/colors $(HOME)/.config/nvim/
	#
	# Create symlinks for vim
	#************************
	@ln -vsfn $(HOME)/.config/nvim/init.vim $(HOME)/.vimrc
	@ln -vsfn $(HOME)/.config/nvim $(HOME)/.vim

plugins:
	#
	# Symlink plugin config
	#*******************
	@ln -vsfn $(CURDIR)/plugins.vim $(HOME)/.config/nvim/plugins.vim
	$(CURDIR)/plugin_install.sh

