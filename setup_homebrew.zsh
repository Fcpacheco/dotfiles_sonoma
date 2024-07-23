#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Check for non-interactive mode warning
if [[ -z "$CI" ]]; then
  CI="true"
fi

# Check for Homebrew and install if not present
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Prevent duplicate lines in .zshrc
if ! grep -q 'eval "$(/usr/local/bin/brew shellenv)"' ~/.zshrc; then
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
fi
eval "$(/usr/local/bin/brew shellenv)"

# Install Packages
brew install --cask --no-quarantine httpie
brew install httpie
brew link httpie

brew install bat


brew install --cask --no-quarantine google-chrome
brew install --cask --no-quarantine visual-studio-code
