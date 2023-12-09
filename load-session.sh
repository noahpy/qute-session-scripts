#
# This script opens a session in qutebrowser. There is a problem, that if one session is already open,
#   the new selected session is 'empty'. To avoid this problem, all qutebrowser windows are killed before
#       opening the new session.

DMENU="dmenu-wl -b -i"

sessions_path=$(realpath ~/.local/share/qutebrowser/sessions)

sel=$($(cat ~/.qutesessions)/get-sessions.sh | eval "$DMENU" )

if [ $? -ne 0 ]; then
    exit 1
fi

ps -A | grep -q 'qutebrowser' && qutebrowser :wq

qutebrowser -r $sel

