#!/bin/bash -eu
# Usage: ./uninstall.sh [--force | --no-unregister] pkgname-version

# if you set VER in the environment to e.g. "-7.0.1" you can use
# the ghc-pkg associated with a different GHC version
: ${VER:=}

if [ "$#" -lt 1 ]
then
        echo "Usage: $0 [--force | --no-unregister] pkgname-version"
        exit 1
fi

if [ "$1" == "--force" ]
then force=--force; shift; # passed to ghc-pkg unregister
else force=
fi

if [ "$1" == "--no-unregister" ]
then shift # skip unregistering and just delete files
else
        if [ "$(ghc-pkg$VER latest $1)" != "$1" ]
        then
                # full version not specified: list options and exit
                ghc-pkg$VER list $1; exit 1
        fi
        ghc-pkg$VER unregister $force $1
fi

# wipe library files
rm -rfv -- ~/.cabal/lib/$1/ghc-$(ghc$VER --numeric-version)/

# if the directory is left empty, i.e. not on any other GHC version
if rmdir -- ~/.cabal/lib/$1 
then rm -rfv -- ~/.cabal/share/{,doc/}$1 # then wipe the shared files as well
fi
