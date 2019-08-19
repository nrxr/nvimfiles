# nvimfiles

These are configurations for `nvim`.

## Pre-requisites

Clone into your terminal:

    git clone git://github.com/nrxr/nvimfiles.git \
      ~/code/src/github.com/nrxr/nvimfiles

Install [`rcm`](https://github.com/thoughtbot/rcm):

    # macOS
    brew tap thoughtbot/formulae
    brew install rcm

    # voidlinux
    sudo xbps-install -S rcm

## Installing the `nvim` configuration files with `rcm`

    rcup $HOME/code/src/github.com/nrxr/nvimfiles \
      -v -t nvim \
      -x README*.md -x LICENSE

## License

© 2019, nrxr `<nrxr@disroot.org>`. Licensed under the MIT terms.
