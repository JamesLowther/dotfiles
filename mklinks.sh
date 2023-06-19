#!/bin/bash

dirs=(
  .config/nvim/lua/custom
)

for dir in "${dirs[@]}"; do 
  src="$HOME/dotfiles/$dir" 
  dst="$HOME/$dir"

  if [ -d "$dst" ]; then
    echo "$dst already exists. Please remove it before linking"
  else
    ln -sv $src $dst
  fi
done
