echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX=$HOME/.n
export PYENV_ROOT=$HOME/.pyenv
export PREFIX="$N_PREFIX"
#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# Load environment variables for building Python with pyenv
typeset -U ldflags cppflags pkg_config_path

ldflags=(
    -L/usr/local/opt/gdbm/lib
    -L/usr/local/opt/openssl@3/lib
    -L/usr/local/opt/zlib/lib
    -L/usr/local/opt/llvm/lib
)

cppflags=(
    -I/usr/local/opt/gdbm/include
    -I/usr/local/opt/openssl@3/include
    -I/usr/local/opt/zlib/include
    -I/usr/local/opt/llvm/include
)

pkg_config_path=(
    /usr/local/opt/gdbm/lib/pkgconfig
    /usr/local/opt/openssl@3/lib/pkgconfig
    /usr/local/opt/zlib/lib/pkgconfig
)

export LDFLAGS="${(j. .)ldflags}"
export CPPFLAGS="${(j. .)cppflags}"
export PKG_CONFIG_PATH="${(j.:.)pkg_config_path}"

# The rest of your .zshrc configuration...


# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias eza='eza --long -a --header --inode --git --color'
alias eza_3='eza --tree --level=3'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias ref='source ~/.zshrc' # Reload ZSH Config
# Remove existing alias for rm
# unalias rm
# Define function for rm to move files to trash
rm() {
  mv "$@" ~/.Trash
}

# Custumize Prompt(s)
PROMPT='
 %1~ %L %# '

RPROMPT='%*'


# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
# export PATH="$N_PREFIX/bin:$PATH"
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

typeset -U path

path=(
	$N_PREFIX/bin
	$PYENV_ROOT/bin
	$path
	/Applications/Visual Studio Code.app/Contents/Resources/app/bin
	/usr/local/opt/make/libexec/gnubin
)

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_";
}



# Use ZSH Plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ...and Other Surprises


# Check if brew shellenv command has been executed before
if ! command -v brew &> /dev/null; then
	eval "$(/usr/local/bin/brew shellenv)"
fi

# Check if pyenv has already been initialized
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"



# Created by `pipx` on 2025-05-14 12:15:35
export PATH="$PATH:/Users/fabiopacheco/.local/bin"
