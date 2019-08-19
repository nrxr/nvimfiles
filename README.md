# nvimfiles

These are configurations for `nvim`.

Clone into your terminal:

    git clone git://github.com/nrxr/nvimfiles.git \
      ~/code/src/github.com/nrxr/nvimfiles

Install [`rcm`](https://github.com/thoughtbot/rcm):

    # macOS
    brew tap thoughtbot/formulae
    brew install rcm

    # voidlinux
    sudo xbps-install -S rcm

Now install it with `rcm`:

    rcup $HOME/code/src/github.com/nrxr/nvimfiles \
      -v -t nvim \
      -x README*.md -x LICENSE
