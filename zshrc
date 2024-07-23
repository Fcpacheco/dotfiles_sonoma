echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias eza='eza --long -a --header --inode --git --color'
alias eza_3='eza --tree --level=3'

# Custumize Prompt(s)
PROMPT='
 %1~ %L %# '

RPROMPT='%*'


# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_";
}



# Use ZSH Plugins


# ...and Other Surprises


eval "$(/usr/local/bin/brew shellenv)"
