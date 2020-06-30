# nvimfiles

These are configurations for `nvim`.

Run on a sh-compatible terminal (for a quick install):

    sh ./install.sh

This will install (hopefully) `rcm` if you don't have it and then configure
everything with it using the tag `nvim`.

If you want to update, then pull from the git repository and run the
`install.sh` script again.

If you want to know what's happening inside (or are using a linux different than
voidlinux), then:

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

    rcup -d $HOME/code/src/github.com/nrxr/nvimfiles \
      -v -t nvim \
      -x README*.md -x LICENSE -x pre-setup.sh

Manually updating can be done by running `pre-setup.sh` again or this same line.

## License

© 2019, nrxr `<nrxr@disroot.org>`. Released under the MIT license terms.
