
DMENU="dmenu-wl -b -i"

sessions_path=$(realpath ~/.local/share/qutebrowser/sessions)

rm -f "$sessions_path/$($(cat ~/.qutesessions)/get-sessions.sh | eval "$DMENU").yml"
