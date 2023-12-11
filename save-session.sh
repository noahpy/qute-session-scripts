
# DMENU = "overwrite with your dmenu-compatibel command"

qutebrowser ":session-save $($(cat ~/.qutesessions)/get-sessions.sh | eval $DMENU )"
