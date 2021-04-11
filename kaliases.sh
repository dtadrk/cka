#!/usr/bin/env bash

# Download kubectl aliases and put them in .bashrc

echo "Download kubectl aliases"

wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O .kubectl_aliases

echo "put aliases in .bashrc"

echo '[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases' >> ~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc

# Get my .vimrc

echo "fetch my .vimrc"

wget https://raw.githubusercontent.com/dtadrk/cka/main/myvimrc -O myvimrc

echo "enable my .vimrc"

cat myvimrc > ~/.vimrc

# Install kubens and kubectx
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

# Enable kubectl autocompletion
kubectl completion bash >/etc/bash_completion.d/kubectl

echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc

echo "source bashrc"
source ~/.bashrc
