#!/bin/bash

# Made by MegArthur. Services and others avaliable at https://megarthur.dev



# Load Message
gum style \
        --foreground "#0148ca" --border-foreground "#061d5b" --border double \
        --align center --width 50 --margin "1 2" --padding "2 4" \
        'Welcome to `meg-cli`' 'Made by `megarthur` to make life easier'

# Selector of Action
Action=$(gum choose Install Update List Custom \
        --item.foreground "#0148ca" --header.foreground '#005aff'  \
        --selected.foreground '#00a8db' --cursor.foreground '#00a8db')

echo "$(Action)"

# If installer
if [ Action = 'Install' ]; then
        InstallerPackages=$(gum choose Install Update List Custom \
        --item.foreground "#0148ca" --header.foreground '#005aff'  \
        --selected.foreground '#00a8db' --cursor.foreground '#00a8db')



fi
