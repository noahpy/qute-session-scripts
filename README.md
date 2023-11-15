
A small collection of shell scripts for managing different qutebrowser sessions efficiently.

## Functionality
- Save a current session with a given name
- Load a named session
- Delete a named session

## Setup
Clone this repo and enter its directory.
Then run
```shell
pwd > ~/.qutesessions
```
and then
```shell
chmod +x *
```
Replace `dmenu-wl` in the scripts with any kind of menu programs you like (`dmenu`, `rofi`, `wofi` etc.)

## Usage
Execute the scripts in your shell or integrate them into key bindings of your windows manager.

You can restore / delete sessions even if there are no qutebrowser instances running.
When updating an already saved session, I recommend using :w

Here is my example for i3 / sway:
```
# qutebrowser session commands
mode "qutebrowser sessions" { 
    bindsym Mod1+l exec .../qute-session-scripts/load-session.sh
    bindsym Mod1+s exec .../qute-session-scripts/save-session.sh
    bindsym Mod1+d exec .../qute-session-scripts/delete-session.sh
    bindsym Mod1+Shift+q mode "default"
    bindsym Ctrl+Return mode "default"
}
bindsym Mod1+Shift+q mode "qutebrowser sessions"
```



