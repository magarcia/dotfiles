# Dotfiles

## Introduction

[@magarcia](https://github.com/magarcia) dotfiles implementation leveraging the following:

- [yadm](https://yadm.io/) - Dotfiles manager
- [fish](https://fishshell.com/) - smart and user-friendly command line shell
- [spacefish](https://spacefish.matchai.me/) - Fish Shell prompt for Astronauts

## Install

```bash
yadm clone https://github.com/magarcia/dotfiles.git --bootstrap # https!

```

### Notes

- Bootstraping updates the remote url to ssh, so an ssh key will have to be configured after this (see below).
- There might be some need to enter the sudo password.
- Mac App Store installs will ask for a login.

## Extra

### Add ssh key

Configure (new or existing) [ssh key and add it to GitHub](https://help.github.com/articles/connecting-to-github-with-ssh/), then [add key to ssh-agent and `~/.ssh/config`](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent). Then test:

```
ssh -T git@github.com
```

### Cheat sheet

```bash
# yadm wraps git, e.g.:
yadm status
yadm add <file>
yadm commit
yadm push
# etc

# List files under yadm control:
yadm list -a
```
