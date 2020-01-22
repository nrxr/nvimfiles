#!/usr/bin/env sh
#
# Copyright © 2020 nrxr <nrxr@disroot.org>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

help='
Usage:

pre-setup.sh [-h|--help] # default
pre-setup.sh setup # pre-install of rcm, git and curl
pre-setup.sh pkm # print the package manager used in this machine
pre-setup.sh os # print what os is being used on the machine

Options:

-h --help             Show this help message.
--version             Show the version.
'

version='
Version: 1.1.0
© 2020, nrxr <nrxr@disroot.org>
Released under the MIT license terms.
'

print_version() {
  echo "$version"
}

print_help() {
  echo "$help"
}

guessOS() {
  if uname -o | grep -q "Darwin"; then
    OS='mac'
  elif uname -o | grep -q -i linux; then
    OS='linux'
  fi
}

printGuessOS() {
  guessOS "$@"
  printf "%s" "$OS"
}

guessPKM() {
  if command -v xbps-install > /dev/null; then
    PM='xbps-install'
  elif command -v brew > /dev/null; then
    PM='brew'
  elif command -v apk > /dev/null; then
    PM='apk'
  elif command -v yay > /dev/null; then
    PM='yay'
  elif command -v pacman > /dev/null; then
    PM='pacman'
  elif command -v apt > /dev/null; then
    PM='apt'
  fi
}

printGuessPKM() {
  guessPKM "$@"
  printf "%s" "$PM"
}

installYay() {
  sudo pacman -S base-devel git
  mkdir -p ~/code/src/aur.archlinux.org/
  git clone https://aur.archlinux.org/yay.git ~/code/src/aur.archlinux.org/yay
  cd ~/code/src/aur/archlinux.org/yay && makepkg -risc && cd - || exit
}

installRcm() {
  guessOS
  guessPKM

  PKGS='rcm curl git'

  isinstalled=$(command -v rcup)

  if [ "$isinstalled" = "" ]; then
    if [ "${PM}" = "brew" ] && [ "${OS}" = "mac" ]; then
        printf "will install rcm with brew...\n"
        {
          brew tap thoughtbot/formulae
          brew install "${PKGS}"
        }
    elif [ "${PM}" = "xbps" ]; then
      printf "will install rcm with xbps...\n"
      sudo xbps-install -S "${PKGS}"
    elif [ "${PM}" = "apk" ]; then
      printf "will install rcm with apk...\n"
      sudo apk add "${PKGS}"
    elif [ "${PM}" = "apt" ]; then
      printf "will install rcm with apt...\n"
      sudo apt install "${PKGS}"
    elif [ "${PM}" = "pacman" ]; then
      printf "will install yay with pacman and then install rcm...\n"
      installYay "$@"
      printf "yay installed; installing rcm...\n"
      yay -S "${PKGS}"
    elif [ "${PM}" = "yay" ]; then
      yay -S "${PKGS}"
    else
      printf "please check in https://github.com/thoughtbot/rcm how to install rcm in your system\n"
      exit
    fi
  fi
}

main() {
  cmd="$1"
  case "$cmd" in
    -h|--help) shift; print_help "$@";;
    --version) shift; print_version "$@";;
    setup)     shift; installRcm "$@";;
    pkm)       shift; printGuessPKM "$@";;
    os)        shift; printGuessOS "$@";;
    *)         print_help "$@";;
  esac
}

main "$@"
