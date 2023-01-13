echo 'Hello Danny'


# Set Variables

# Changes ZSH Options

# Create Aliases
alias ls='ls -lAFh'

# Customize Prompts(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'
# Add Locations to $PATH Variable
#
# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
# Use ZSH Plugins
#
# ... And other Surprises
