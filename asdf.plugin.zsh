asdf_dir="${asdf_dir:-$HOME/.asdf}"

if [[ -d $asdf_dir ]]; then
  source $asdf_dir/asdf.sh
  fpath+=(${ASDF_DIR}/completions)
fi
