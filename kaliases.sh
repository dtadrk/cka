#!/usr/bin/env bash

# Download kubectl aliases and put them in .bashrc

wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O .kubectl_aliases


echo '[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases' >> ~/.bashrc

source ~/.bashrc

# Get my .vimrc

wget https://raw.githubusercontent.com/dtadrk/cka/main/myvimrc -O myvimrc

cat myvimrc > ~/.vimrc
