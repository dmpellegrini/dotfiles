echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Changes ZSH Options

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

# Customize Prompts(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'
# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# function exists() {
#   command -v $1 >/dev/null 2>&1
# }

# Use ZSH Plugins

# ... And other Surprises
