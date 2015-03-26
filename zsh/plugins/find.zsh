##
# file name search
#
function peco_find() {
  local res
  res=$(find . -name "*${1}*" | grep -v "/\." | peco)
  BUFFER=${BUFFER}${res}
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco_find
