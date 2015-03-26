function exists { which $1 &> /dev/null }

# load peco sources
if [ -d ~/.peco/zsh/plugins/ ]; then
  for f (~/.peco/zsh/plugins/*) source "${f}"
fi

bindkey '^o' peco_ghq_src
bindkey '^r' peco_select_history
bindkey '^xr' peco-cdr
bindkey '^xv' vim_plugins_directory
bindkey '^xf' peco_find
bindkey '^gr' peco-git-recent-remote-branches
bindkey '^gb' peco-git-recent-branches
bindkey '^gl' peco-git-log

if exists gibo; then
  # http://sixeight.hatenablog.com/entry/2015/02/28/225001
  alias gibol='gibo -l | sed "/=/d" | tr "\t", "\n" | sed "/^$/d" | sort | peco | xargs gibo'
fi
