#!/usr/bin/env bash

# copy .config files
echo -e "\nCopiando arquivos de configuração..."
cp -R config "$HOME/.config"
cp home/gtkrc-2.0 "$HOME/.gtkrc-2.0"
cp home/fehbg "$HOME/.fehbg"
cp home/bash_profile "$HOME/.bash_profile"
cp home/.zshrc "$HOME/.zshrc"
cp home/.vimrc "$HOME/.vimrc"
cp home/.tmux.conf "$HOME/.tmux.conf"
cp -R home/.vim "$HOME/.vim"
cp home/aws-token.sh "$HOME/aws-token.sh"
cp home/.muttrc "$HOME/.muttrc"
chmod +x "$HOME/aws-token.sh"

#config ranger
ranger --copy-config=all
cp config/rc.conf "$HOME/.config/ranger/"

#tmuxinator conf
mkdir -p "$HOME/.config/tmuxinator/"
cp config/tmux_carlos.yml "$HOME/.config/tmuxinator/"
cp config/terminator/config "$HOME/.config/terminator/"
# user dirs
echo -e "Criando pastas do usuário..."
mkdir -p "$HOME/Desktop"
mkdir -p "$HOME/Docs"
mkdir -p "$HOME/Downloads"
mkdir -p "$HOME/Music"
mkdir -p "$HOME/Pics"
mkdir -p "$HOME/pub"
mkdir -p "$HOME/templates"
mkdir -p "$HOME/videos"
mkdir -p "$HOME/notes"

# create ~/.local dirs 
echo -e "Criando pasta ~/.local..."
mkdir -p "$HOME/.local/opt"
mkdir -p "$HOME/.local/share"

# copy scripts to ~/.local/bin
echo -e "Copiando scripts..."
cp -R bin "$HOME/.local/"

# copy/install artwork files
echo -e "Copiando fontes e papéis de parede..."
cp -R artwork/wallpapers "$HOME/.local/share/"
cp -R artwork/fonts "$HOME/.local/share/"
# user settings...
echo -e "Aplicando configurações do usuário..."
sed -i "s/USER/$USER/g" $HOME/.gtkrc-2.0

echo -e "\nPronto!\n"

exit 0
