# ALIAS DEFINITIONS.
if [ -f $HOME/.config/aliases ]; then
	. $HOME/.config/aliases
fi

# EXPORTS
if [ -f $HOME/.config/exports ]; then
	. $HOME/.config/exports
fi

# PATHS
if [ -f $HOME/.config/paths ]; then
	. $HOME/.config/paths
fi

# VI MODE
set -o vi
set editing-mode vi

# BASH_HISTORY
export HISTSIZE=1000000                 # In-memory history size
export HISTFILESIZE=1000000             # On-disk history size
export HISTCONTROL=ignoredups:erasedups # Ignore and erase duplicate commands
export HISTIGNORE="ls:cd:exit:clear"    # Optional: ignore trivial commands
export PROMPT_COMMAND="history -a; history -c; history -r"

# PROMPT
if [ -f "$HOME/.config/prompt/bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=0
	GIT_PROMPT_THEME=Single_line_Minimalist
	. $HOME/.config/prompt/bash-git-prompt/gitprompt.sh
fi

# NEOVIM SHADA
# rm ~/.local/state/nvim/shada/*

# PYENV
export PATH="$PATH:/home/jaryd/.pyenv/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PATH="$PATH:/opt/mssql-tools18/bin"

# FZF
source /home/jaryd/apps/fzf-marks/fzf-marks.plugin.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Change directory using fzf and fd
cd_to_dir() {
	local selected_dir
	selected_dir=$(fdfind -t d . "$1" | fzf +m --height 50% --preview 'tree -C {}')
	if [[ -n "$selected_dir" ]]; then
		# Change to the selected directory
		cd "$selected_dir" || return 1
	fi
}
alias cds='cd_to_dir ~/'

# Change directory and open in a new tmux window
cd_to_dir_tmux() {
	local selected_dir
	selected_dir=$(fdfind -t d . "$1" | fzf +m --height 50% --preview 'tree -C {}')
	if [[ -n "$selected_dir" ]]; then
		# Change to the selected directory
		tmux new-window -c "$selected_dir" -n "$selected_dir" || return 1
	fi
}
alias cdw='cd_to_dir_tmux ~/'
