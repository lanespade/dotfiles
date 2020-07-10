#!/bin/zsh
set -Eeuo pipefail

echo 'Installing nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

echo 'Setting Default'
echo 'stable' >  $HOME/.nvmrc
