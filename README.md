# nvimfiles

These are configurations for `nvim`.

Run on a sh-compatible terminal (for a quick install):

```console
foo@bar:~$ sh ./install.sh
```

This will install (hopefully) `rcm` if you don't have it and then configure
everything with it using the tag `nvim`.

If you want to update, then pull from the git repository and run the
`install.sh` script again.

If you want to know what's happening inside (or are using a linux different than
voidlinux), then:

## Pre-requisites

Clone into your terminal:

```console
git clone git://github.com/nrxr/nvimfiles.git \
  ~/code/src/github.com/nrxr/nvimfiles
```

Install [`rcm`](https://github.com/thoughtbot/rcm):

```console
# macOS
foo@bar:~$ brew tap thoughtbot/formulae
foo@bar:~$ brew install rcm

# voidlinux
foo@bar:~$ sudo xbps-install -S rcm
```

## Installing the `nvim` configuration files with `rcm`

```console
foo@bar:~$ rcup -d $HOME/code/src/github.com/nrxr/nvimfiles \
  -v -t nvim \
  -x README*.md -x LICENSE -x pre-setup.sh -x install.sh
```

Manually updating can be done by running `pre-setup.sh` again or this same line.

## License

Copyright © 2019-2024, nrxr `<public@nrxr.org>`.

This software is distributed under the terms of the MIT license.

See LICENSE for details.
