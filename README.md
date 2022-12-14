# OMF Shell

```
sudo add-apt-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
cp config.fish ~/.config/fish/config.fish
chsh -s /usr/bin/fish
```

# TMUX setup

```
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf
```

# Python enviroment

Use pipenv with pipes

```
pip install --user pipx
pipx install pipenv
pip3 install pipenv-pipes --user
```

# NeoVim setup

This is my prefered neovim config

## Install Neovim stable

```
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt install neovim -y
```

## Clone Astrovim config

```
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
```

## Install LSP

Enter :LspInstall followed by the name of the server you want to install  
Example: :LspInstall pyright

## Install language parsers

Enter :TSInstall followed by the name of the language you want to install  
Example: :TSInstall python

## User settings

```
mkdir -p ~/.config/astronvim/lua/user
cp -r init.lua ~/.config/astronvim/lua/user/
cp mappings.lua ~/.config/nvim/lua/core/mappings.lua
cp treesitter.lua ~/.config/nvim/lua/configs/treesitter.lua
```

## Clipboard

Only use if clipboard doesn't work:
To use the system clipboard if using WSL First install a local copy of neovim on windows.
Then replace $NEOVIM_WIN_DIR with the path to our Neovim Windows installation, e.g. /mnt/c/Program Files/Neovim.
The command can then be symlinked using:

```
sudo ln -s "$NEOVIM_WIN_DIR/bin/win32yank.exe" "/usr/local/bin/win32yank.exe"
```
