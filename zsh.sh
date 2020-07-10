#!/bin/zsh
set -Eeuo pipefail

echo 'Copying .zshrc'
cp $(dirname $0)/.zshrc $HOME/.zshrc

echo 'Sourcing .zshrc'
exec /bin/zsh
