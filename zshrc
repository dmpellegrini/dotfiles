echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export LVIM_COMMAND="$HOME/.local/bin"

# Create Aliases
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

# Customize Prompt(s)
# Git Status in Prompt

# Autoloads zsh hook, and grabs vcs_info
autoload -Uz add-zsh-hook vcs_info

# Enables Environment Variable In Prompt
setopt prompt_subst

# Runs the vcs_info command just before prompt
add-zsh-hook precmd vcs_info

# Sets color of variable
GIT_PROMPT_COLOR="blue"

# Customizes prompt with current directory, shell level and git repo
PROMPT='
%1~ ${vcs_info_msg_0_}'

# Adds time to right side  of the prompt
RPROMPT='%L %*'

# Adds staged/unstaged strings to prompt 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr %F{red}'*'%f
zstyle ':vcs_info:*' stagedstr %F{green}'+'%f

# Formats the style of the prompt
zstyle ':vcs_info:git:*' formats '(%F{blue}%b%f%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# Add Locations to $PATH array

typeset -U path

path=(
  "$LVIM_COMMAND"
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ... And other Surprises
