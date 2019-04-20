# Makefile
pwd := $(shell pwd -LP)

link:
	@if [ ! . -ef ~/.tmux ]; then ln -nfs "${pwd}" ~/.tmux; fi
	@if [ ! . -ef ~/.config/tmux ]; then ln -nfs "${pwd}" ~/.config/tmux; fi
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
