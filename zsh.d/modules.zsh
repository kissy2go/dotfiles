# Source zplug
ZPLUG_HOME="$(brew --prefix zplug 2>/dev/null)"
[[ -s "${ZPLUG_HOME}/init.zsh" ]] && source "${ZPLUG_HOME}/init.zsh"

#
# General
#

# Set case-sensitivity for completion, history lookup, etc.
# zstyle ':prezto:*:*' case-sensitive 'yes'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':prezto:*:*' color 'yes'

# Add additional directories to load prezto modules from
# zstyle ':prezto:load' pmodule-dirs $HOME/.zprezto-contrib

# Set the Zsh modules to load (man zshmodules).
# zstyle ':prezto:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':prezto:load' zfunction 'zargs' 'zmv'

# Set the Prezto modules to load (browse modules).
# The order matters.
zplug 'modules/environment', from:prezto
zplug 'modules/terminal', from:prezto
zplug 'modules/editor', from:prezto
zplug 'modules/history', from:prezto
zplug 'modules/directory', from:prezto
zplug 'modules/spectrum', from:prezto
zplug 'modules/utility', from:prezto
zplug 'modules/completion', from:prezto
zplug 'modules/prompt', from:prezto
zplug 'modules/osx', from:prezto
zplug 'modules/tmux', from:prezto
zplug 'modules/git', from:prezto

#
# Autosuggestions
#

# Set the query found color.
# zstyle ':prezto:module:autosuggestions:color' found ''

#
# Completions
#

# Set the entries to ignore in static */etc/hosts* for host completion.
# zstyle ':prezto:module:completion:*:hosts' etc-host-ignores \
#   '0.0.0.0' '127.0.0.1'

# Set the list colors to completions.
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#
# Editor
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':prezto:module:editor' key-bindings 'emacs'

# Auto convert .... to ../..
# zstyle ':prezto:module:editor' dot-expansion 'yes'

# Allow the zsh prompt context to be shown.
#zstyle ':prezto:module:editor' ps-context 'yes'

#
# Git
#

# Ignore submodules when they are 'dirty', 'untracked', 'all', or 'none'.
# zstyle ':prezto:module:git:status:ignore' submodules 'all'

#
# GNU Utility
#

# Set the command prefix on non-GNU systems.
# zstyle ':prezto:module:gnu-utility' prefix 'g'

#
# History Substring Search
#

# Set the query found color.
# zstyle ':prezto:module:history-substring-search:color' found ''

# Set the query not found color.
# zstyle ':prezto:module:history-substring-search:color' not-found ''

# Set the search globbing flags.
# zstyle ':prezto:module:history-substring-search' globbing-flags ''

#
# OS X
#

# Set the keyword used by `mand` to open man pages in Dash.app
# zstyle ':prezto:module:osx:man' dash-keyword 'manpages'

#
# Pacman
#

# Set the Pacman frontend.
# zstyle ':prezto:module:pacman' frontend 'yaourt'

#
# Prompt
#

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':prezto:module:prompt' theme 'paradox'

# Set the working directory prompt display length.
# By default, it is set to 'short'. Set it to 'long' (without '~' expansion)
# for longer or 'full' (with '~' expansion) for even longer prompt display.
zstyle ':prezto:module:prompt' pwd-length 'long'

# Set the prompt to display the return code along with an indicator for non-zero
# return codes. This is not supported by all prompts.
zstyle ':prezto:module:prompt' show-return-val 'yes'

#
# Ruby
#

# Auto switch the Ruby version on directory change.
# zstyle ':prezto:module:ruby:chruby' auto-switch 'yes'

#
# Python
#

# Auto switch the Python virtualenv on directory change.
# zstyle ':prezto:module:python:virtualenv' auto-switch 'yes'

# Automatically initialize virtualenvwrapper if pre-requisites are met.
# zstyle ':prezto:module:python:virtualenv' initialize 'yes'

#
# Screen
#

# Auto start a session when Zsh is launched in a local terminal.
# zstyle ':prezto:module:screen:auto-start' local 'yes'

# Auto start a session when Zsh is launched in a SSH connection.
# zstyle ':prezto:module:screen:auto-start' remote 'yes'

#
# SSH
#

# Set the SSH identities to load into the agent.
# zstyle ':prezto:module:ssh:load' identities 'id_rsa' 'id_rsa2' 'id_github'

#
# Syntax Highlighting
#

# Set syntax highlighters.
# By default, only the main highlighter is enabled.
# zstyle ':prezto:module:syntax-highlighting' highlighters \
#   'main' \
#   'brackets' \
#   'pattern' \
#   'line' \
#   'cursor' \
#   'root'
#
# Set syntax highlighting styles.
# zstyle ':prezto:module:syntax-highlighting' styles \
#   'builtin' 'bg=blue' \
#   'command' 'bg=blue' \
#   'function' 'bg=blue'
#
# Set syntax pattern styles.
# zstyle ':prezto:module:syntax-highlighting' pattern \
#   'rm*-rf*' 'fg=white,bold,bg=red'

#
# Terminal
#

# Auto set the tab and window titles.
zstyle ':prezto:module:terminal' auto-title 'yes'

# Set the window title format.
zstyle ':prezto:module:terminal:window-title' format '%n@%m: %s'

# Set the tab title format.
# zstyle ':prezto:module:terminal:tab-title' format '%m: %s'

# Set the terminal multiplexer title format.
# zstyle ':prezto:module:terminal:multiplexer-title' format '%s'

#
# Tmux
#

# Auto start a session when Zsh is launched in a local terminal.
# zstyle ':prezto:module:tmux:auto-start' local 'yes'

# Auto start a session when Zsh is launched in a SSH connection.
# zstyle ':prezto:module:tmux:auto-start' remote 'yes'

# Integrate with iTerm2.
# zstyle ':prezto:module:tmux:iterm' integrate 'yes'

# Set the default session name:
# zstyle ':prezto:module:tmux:session' name 'YOUR DEFAULT SESSION NAME'

#
# Utility
#

# Enabled safe options. This aliases cp, ln, mv and rm so that they prompt
# before deleting or overwriting files. Set to 'no' to disable this safer
# behavior.
# zstyle ':prezto:module:utility' safe-ops 'yes'

#
# Set zsh-notify module
#
zplug 'marzocchi/zsh-notify', use:"notify.plugin.zsh"

# Load modules
type zplug &>/dev/null && zplug load

#
# Configure zsh-notify module
#
zstyle ':notify:*' error-title "Command failed (in #{time_elapsed} seconds)"
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"
zstyle ':notify:*' command-complete-timeout 30
