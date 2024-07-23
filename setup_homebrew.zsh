#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Check for non-interactive mode warning
if [[ -z "$CI" ]]; then
  CI="true"
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Prevent duplicate lines in .zshrc
if ! grep -q 'eval "$(/usr/local/bin/brew shellenv)"' ~/.zshrc; then
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
fi
eval "$(/usr/local/bin/brew shellenv)"

brew install --cask --no-quarantine httpie -y
brew install httpie -y
brew link httpie -y

brew install bat -y


brew install --cask --no-quarantine google-chrome -y
brew install --cask --no-quarantine visual-studio-code -y
