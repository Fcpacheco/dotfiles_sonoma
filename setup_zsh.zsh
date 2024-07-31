#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Check for non-interactive mode warning
if [[ -z "$CI" ]]; then
  CI="true"
fi

# Instalation unnecessary; it's in the Brewfile

echo "Enter superuser password to add zsh to /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells'

echo "Enter superuser password to change shell to zsh"
chsh -s '/usr/local/bin/zsh'

