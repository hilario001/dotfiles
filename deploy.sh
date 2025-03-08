#!/usr/bin/env bash
from="$(pwd)/.dotfiles/.*";
to="$HOME";
ln -sv $from $to;

#loc="$HOME/.config/";
#for file in $(pwd)/.dotfiles/.config/*; do
#    ln -sv $file $loc;
#done
