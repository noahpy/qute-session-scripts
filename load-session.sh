#
# This script opens a session in qutebrowser. There is a problem, that if one session is already open,
#   the new selected session is 'empty'. To avoid this problem, all qutebrowser windows are killed before
#       opening the new session.
#

sessions_path=$(realpath ~/.local/share/qutebrowser/sessions)

rm ~/.local/share/qutebrowser/sessions/_autosave.yml

sel=$(find $sessions_path -iname "*.yml" -exec basename {} .yml ";"  | dmenu -i)

if [ $? -ne 0 ]; then
    exit 1
fi

ps -A | grep -q 'qutebrowser' && qutebrowser :wq

qutebrowser -r $sel
