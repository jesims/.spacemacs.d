#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

set -x
git -C $HOME/.emacs.d pull --rebase
emacs --batch -l ~/.emacs.d/init.el --eval="(configuration-layer/update-packages t)"
