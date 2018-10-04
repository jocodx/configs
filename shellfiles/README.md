# Config files for Bash and Zsh

## Common files
File 'aliases' (symlink to ~/.aliases), containing alias definitions,
is sourced by both bash and zsh.

## Bash
Local startup Files:
- ~/.bash_profile:
    - used by login shells
    - Per-user, after /etc/profile
    - sources ~/.bashrc
- ~/.bashrc:
    - used by interactive, non-login shells

##Zsh
Grml-zsh (https://grml.org/zsh/) is used as a base configuration.

Local startup files:
- ~/.zprofile:
    - sourced when starting as a login shell.
- ~/.zshrc:
    - grml-zsh is used, do not modify this file
    - sourced when starting as an interactive shell
- ~/.zshrc.pre
    - sourced before .zshrc
- ~/.zshrc.local
    - sourced after .zshrc
