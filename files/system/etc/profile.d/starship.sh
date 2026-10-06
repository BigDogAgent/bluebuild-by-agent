# System-wide starship prompt for interactive bash shells.
# The config lives in /etc/starship.toml (shipped by the image).
# Set STARSHIP_CONFIG before login to override it.

[ -n "${BASH_VERSION:-}" ] || return 0
case $- in
  *i*) ;;
  *) return 0 ;;
esac
command -v starship >/dev/null 2>&1 || return 0

export STARSHIP_CONFIG="${STARSHIP_CONFIG:-/etc/starship.toml}"
eval "$(starship init bash)"
