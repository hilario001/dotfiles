#!/usr/bin/env bash
loc="$HOME/.config/";
for file in $(pwd)/.dotfiles/.config/*; do
#ln -sv $file $loc;
    printf "%s\n" "$file";
done
