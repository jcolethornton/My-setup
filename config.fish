# Run tmux on startup
if status is-interactive
and not set -q TMUX
    exec tmux new-session -A -s main
end

# Mount
# mountpoint -q /mnt/w || sudo mount -t drvfs W: /mnt/w
# mountpoint -q /mnt/db || sudo mount -t cifs -o user=ADMIN.JARYDT@T3I.LOCAL,pass=$T3I_PASS,vers=2.1,uid=1000,gid=1000 //databases.storage.prd.vocusgroup.co.nz/Databases /mnt/db

# source env vars
source ~/.setenv/varenv

# Alias
alias snow="snowsql --private-key-path ~/.snowflake/rsa_key.p8"

# OMF bobthefish theme
set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support no
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_node yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path yes
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone Pacific/Auckland
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme base16-dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

# OMF Vi-mode
fish_vi_key_bindings
set fish_plugins autojump vi-mode
