JULIA_PKG_NAME=Compat
DEST="$PREFIX/share/julia/site/v$JULIA_VERSION/$JULIA_PKG_NAME"

mkdir -p "$DEST"
cp --archive --no-target-directory "$PWD" "$DEST"
