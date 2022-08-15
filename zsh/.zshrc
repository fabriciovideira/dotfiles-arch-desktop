#!/bin/zsh

if [ -r "${HOME}/.zprofile" ]; then
  source "${HOME}/.zprofile"
fi

if [ -r "${HOME}/.zaliases" ]; then
  source "${HOME}/.zaliases"
fi

ZSH="/usr/share/oh-my-zsh/"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

DISABLE_MAGIC_FUNCTIONS="true"

ZSH_CUSTOM="${HOME}/.config/zsh/oh-my-zsh/custom"

if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
fi

if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
fi

plugins=(zsh-syntax-highlighting zsh-autosuggestions)

ZSH_CACHE_DIR="${HOME}/.cache/oh-my-zsh"

if [[ ! -d "${ZSH_CACHE_DIR}" ]]; then
  mkdir -p "${ZSH_CACHE_DIR}"
fi

source "${ZSH}/oh-my-zsh.sh"

source /usr/share/nvm/init-nvm.sh
