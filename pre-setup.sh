#!/usr/bin/env sh

if [ "$(uname)" = "Darwin" ]; then
  OS='mac'
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
  OS='linux'
fi

runrcup() {
  printf "running rcup...\n"
  rcup -d . \
    -v -t nvim \
    -x README*.md -x LICENSE -x pre-setup.sh
}

isinstalled=`which rcup`

if [ "${OS}" = "mac" ]; then
  if [ "$isinstalled" = "rcup not found" ]; then
    printf "will install rcm with brew...\n"
    {
      brew tap thoughtbot/formulae
      brew install rcm
    }
  fi
  runrcup
elif [ "${OS}" = "linux" ]; then
  if [ "$isinstalled" = "rcup not found" ]; then
    printf "will install rcm with xbps...\n"
    sudo xbps-install -S rcm
  fi
  runrcup
else
  printf "Don't know what to do in the current OS"
fi
