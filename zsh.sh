#!/usr/bin/env bash

# zsh
brew install zsh
set zsh as default shell
sudo bash -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
# oh-my-zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# symlink zsh files
rm ~/.zshrc
rm ~/.zprofile
ln -s "`pwd`/.zshrc" ~/;
ln -s "`pwd`/.zprofile" ~/;

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions


# Copy zsh spaceship theme
npm install -g spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "${ZSH_CUSTOM}/themes/spaceship-prompt" --depth=1
ln -s $ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme