#
# History
#

function peco-select-history() {
  BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-select-history

# History search using peco
bindkey '^r' peco-select-history
