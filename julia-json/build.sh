#!/bin/bash

export JULIA_PKGDIR="$PREFIX/share/julia/site"
julia -e 'Pkg.init()'
julia -e 'Pkg.add("JSON")'
julia -e 'Pkg.build("JSON")'
rm -rf $JULIA_PKGDIR/v*/METADATA
rm $JULIA_PKGDIR/v*/META_BRANCH

