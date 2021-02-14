git remote add origin git@github.com:dtadrk/#!/usr/bin/env bash

wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O .kubectl_aliases


echo [ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases >> ~/.bashrc

source ~/.bashrc
