#!/bin/sh
set -e

brew install glib@2.68 pkg-config
cd ~/gtk/source/pkg-config-0.29.2
make distclean || true
export PKG_CONFIG_PATH="/opt/homebrew/opt/glib@2.68/lib/pkgconfig"
./configure --with-internal-glib=no
make -j$(sysctl -n hw.ncpu)

#sedwards@sedwards-mini patches % bash work_around_glib_and_pkg-config.sh 
#✔︎ JSON API cask.jws.json                                                                                                                                     Downloaded   15.3MB/ 15.3MB
#✔︎ JSON API formula.jws.json                                                                                                                                  Downloaded   32.0MB/ 32.0MB
#Warning: No available formula with the name "glib@2.68". Did you mean glibmm@2.66?
#==> Searching for similarly named formulae and casks...
#==> Formulae
#glibmm@2.66

#To install glibmm@2.66, run:
#  brew install glibmm@2.66
