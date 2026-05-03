# TMUX setup

First install tmux then:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf
```

# Python enviroments

Use pyenv
https://github.com/pyenv/pyenv

# Prompt
Install the bash prompt
https://github.com/magicmonty/bash-git-prompt

# Bash
Once the above has been setup then add this to bashrc
```bash
cat bashrc >> ~/.bashrc
source ~/.bashrc
```

# NeoVim setup

Nvim config

```bash
cp config/nvim ~/.config/nvim
```

## Install LSP

Enter :LspInstall followed by the name of the server you want to install  
Example: :LspInstall pyright

## Install language parsers

Enter :TSInstall followed by the name of the language you want to install  
Example: :TSInstall python

