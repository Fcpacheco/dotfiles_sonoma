#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/fabiopacheco/.zshrc
    eval "$(/usr/local/bin/brew shellenv)"

brew install --cask httpie
brew install httpie
brew link httpie

brew install bat


brew install --cask google-chrome
brew install --cask visual-studio-code
