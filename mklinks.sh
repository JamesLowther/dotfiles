#!/bin/bash

dirs=(
  .config/nvim/lua/custom
)

for dir in "${dirs[@]}"; do 
  src="$HOME/dotfiles/$dir" 
  dst="$HOME/$dir"

  if [ -d "$dst" ] || [ -f "$dst" ]; then
    read -e -p "$dst already exists. Would you like to delete it? [y/N]:" choice
    if [[ "$choice" == [Yy]* ]]; then
      echo "Deleting $dst"
      rm -r $dst
      ln -sv $src $dst
    else
      echo "Skipping delete"
    fi
  else
    ln -sv $src $dst
  fi
done
