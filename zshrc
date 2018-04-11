ZSHD="${ZDOTDIR:-$HOME}/.zsh.d"
[[ -s "${ZSHD}/options.zsh" ]]     && source "${ZSHD}/options.zsh"
[[ -s "${ZSHD}/modules.zsh" ]]     && source "${ZSHD}/modules.zsh"
[[ -s "${ZSHD}/keybindings.zsh" ]] && source "${ZSHD}/keybindings.zsh"

[[ -s "${HOME}/.modules" ]] && source "${HOME}/.modules"
[[ -s "${HOME}/.aliases" ]] && source "${HOME}/.aliases"
