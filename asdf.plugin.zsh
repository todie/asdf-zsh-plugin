ASDF_DIR=$XDG_DATA_HOME/asdf
ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdfrc
ASDF_DATA_DIR=$XDG_CACHE_HOME/asdf

if [[ -d $ASDF_DIR ]]; then
  source $ASDF_DIR/asdf.sh
  fpath+=($ASDF_DIR/completions)
fi
