#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Check for non-interactive mode warning
if [[ -z "$CI" ]]; then
  CI="true"
fi

# Node versions are manage with `n`, which is in the Brewfile.
# See zshrc for the N_PREFIX variable and the addition to the $PATH.
if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed."
else
  echo "Node & NPM not found. Installing..."
  n latest
fi

