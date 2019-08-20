# nvimfiles

These are configurations for `nvim`.

Run on a sh-compatible terminal (for a quick install):

    sh ./pre-setup.sh

If you want to update, just run the `pre-setup.sh` script again.

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

    rcup -d . \
      -v -t nvim \
      -x README*.md -x LICENSE -x pre-setup.sh

Manually updating can be done by running `pre-setup.sh` again or this same line.

## License

© 2019, nrxr `<nrxr@disroot.org>`. Released under the MIT license terms.
