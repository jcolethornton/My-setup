# TMUX setup
First install TPM plugin manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Replace config file with config from this repo 
```
cp tmux.conf ~/.tmux.conf
```

# NeoVim setup
This is my prefered neovim config

## Install Neovim stable
```
$ https://github.com/neovim/neovim
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

## Additional plugins 
```
-- Tmux intergration
{'christoomey/vim-tmux-navigator'},
-- Indent Lines (not in use)
{'lukas-reineke/indent-blankline.nvim'},
-- Dad bod UI for tables (SQL/DF etc)
{'kristijanhusak/vim-dadbod-ui'},
{'tpope/vim-dadbod'},
-- Ipython support :IPython to open console <F5> to run selection 
{'bfredl/nvim-ipy'}
```

## Additional mappings
```
cat nvim-mappings.lua >> ~/.config/nvim/lua/core/mappings.lua
```

## Treesitter config
```
cp nvim-treesitter.lua ~/.config/nvim/lua/configs/treesitter.lua
```

## Clipboard
To use the system clipboard if using WSL First install a local copy of neovim on windows.
Then replace $NEOVIM_WIN_DIR with the path to our Neovim Windows installation, e.g. /mnt/c/Program Files/Neovim.
The command can then be symlinked using:
```
sudo ln -s "$NEOVIM_WIN_DIR/bin/win32yank.exe" "/usr/local/bin/win32yank.exe"
```
