#!/usr/bin/env bash

# copy .config files
echo -e "\nCopiando arquivos de configuração..."
cp -R config "$HOME/.config"
cp home/.zshrc "$HOME/.zshrc"
cp home/.vimrc "$HOME/.vimrc"
cp home/.tmux.conf "$HOME/.tmux.conf"
cp -R home/.vim "$HOME/.vim"
cp home/.muttrc "$HOME/.muttrc"

#config ranger
ranger --copy-config=all
cp config/rc.conf "$HOME/.config/ranger/"

#tmuxinator conf
mkdir -p "$HOME/.config/tmuxinator/"
cp config/tmux_carlos.yml "$HOME/.config/tmuxinator/"
cp config/terminator/config "$HOME/.config/terminator/"

# user dirs
echo -e "Criando pastas do usuário..."
mkdir -p "$HOME/Docs"
mkdir -p "$HOME/Downloads"

# create ~/.local dirs 
echo -e "Criando pasta ~/.local..."
mkdir -p "$HOME/.local/opt"
mkdir -p "$HOME/.local/share"

# copy scripts to ~/.local/bin
echo -e "Copiando scripts..."
cp -R bin "$HOME/.local/"

echo -e "\nPronto!\n"

exit 0
