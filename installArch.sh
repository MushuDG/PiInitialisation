#!/bin/bash
echo "Do you want to change user's password? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        passwd
fi
sudo pacman -S install git zsh wget curl neofetch -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm -rf ~/.zshrc
rm -rf ~/.p10k.zsh
cd ~
wget https://raw.githubusercontent.com/MushuDG/PiInitialisation/main/.p10k.zsh
wget https://raw.githubusercontent.com/MushuDG/PiInitialisation/main/.zshrc
rm -rf ./PiInitialisation
clear
zsh