.PHONY: all vim shellfiles tmux

all: vim shellfiles tmux

vim:
	cd vim && $(MAKE)

shellfiles:
	cd shellfiles && $(MAKE)

tmux:
	cd tmux && $(MAKE)
