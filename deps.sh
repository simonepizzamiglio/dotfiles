#!/usr/bin/env bash

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# deps
brew install git

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

nvm install 'lts/*' --reinstall-packages-from=current
nvm alias default 'lts/*'
