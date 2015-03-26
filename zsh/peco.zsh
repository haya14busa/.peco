# load peco sources
if [ -d ~/.peco/zsh/plugins/ ]; then
  for f (~/.peco/zsh/plugins/*) source "${f}"
fi

bindkey '^o' peco_ghq_src
bindkey '^r' peco_select_history
bindkey '^xr' peco-cdr
bindkey '^xv' vim_plugins_directory
bindkey '^gr' peco-git-recent-remote-branches
bindkey '^gb' peco-git-recent-branches
bindkey '^gl' peco-git-log

