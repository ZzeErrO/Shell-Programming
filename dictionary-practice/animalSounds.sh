#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[@]}
echo ${sounds[cow]}
unset sounds[wolf]
echo ${!sounds[@]}
echo ${#sounds[*]}
