#!/usr/bin/env bash

repos=(
    altercation/vim-colors-solarized
    baskerville/bubblegum
    chriskempson/base16-vim
    chriskempson/vim-tomorrow-theme
    jeetsukumaran/vim-nefertiti
    jnurmine/Zenburn
    jonathanfilip/vim-lucius
    jordwalke/flatlandia
    nanotech/jellybeans.vim
    noahfrederick/vim-hemisu
    noahfrederick/vim-noctu
    reedes/vim-colors-pencil
    romainl/Apprentice
    sickill/vim-monokai
    vim-scripts/saturn.vim
)

mkdir -p tmp/

for repo in ${repos[*]}; do
    dir=tmp/$(basename $repo)
    if [ ! -d $dir ]; then
        echo cloning $repo
        git clone ssh://github.com/$repo $dir
    else
        echo updating $repo
        cd $dir
        git pull
        cd ../..
    fi

    for color in $dir/colors/*; do
        cp $color colors/
    done
done
