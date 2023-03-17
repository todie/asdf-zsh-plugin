export ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdfrc
export ASDF_DIR=$XDG_DATA_HOME/asdf
export ASDF_DATA_DIR=$XDG_CACHE_HOME/asdf

function zsh_plugin:asdf:tools () {
  awk '{ print $1 }' ~/.tool-versions
}

function zsh_plugin:asdf:ensure () {
  plugin=${1:-}
  asdf plugin add "$1" &>/dev/null
  # asdf current "$1" || asdf install "$1"
}

if [[ -d $ASDF_DIR ]]; then
  source $ASDF_DIR/asdf.sh
  fpath+="$ASDF_DIR/completions"
  path+="$ASDF_DATA_DIR/shims"
  for plugin in $(zsh_plugin:asdf:tools); zsh_plugin:asdf:ensure $plugin
fi
