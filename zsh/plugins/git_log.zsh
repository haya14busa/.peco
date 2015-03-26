# [ターミナル上で unite.vim っぽいことをする peco が大変便利 - 反省はしても後悔はしない](http://cohama.hateblo.jp/entry/2014/07/06/022017)
function peco-git-log() {
  GIT_COMMIT_HASH=$(git log --oneline --graph --all --decorate | peco | sed -e "s/^\W\+\([0-9A-Fa-f]\+\).*$/\1/")
  BUFFER=${BUFFER}${GIT_COMMIT_HASH}
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-git-log
