# TOP OF THE BASHRC
[[ $- == *i* ]] && source -- /usr/share/blesh/ble.sh --attach=none

# Fastfetch
if [ $SHLVL -eq 1 ] && [ -z "$SKIP_FASTFETCH" ]; then
  fastfetch
fi

# Yazy
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
bind '"\C-e": "y\n"'

# END OF FILE
[[ ! ${BLE_VERSION-} ]] || ble-attach
