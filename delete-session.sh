
# DMENU = "overwrite with your dmenu-compatibel command"

sessions_path=$(realpath ~/.local/share/qutebrowser/sessions)

rm -f "$sessions_path/$($(cat ~/.qutesessions)/get-sessions.sh | eval "$DMENU").yml"
