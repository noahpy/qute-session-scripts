
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
Here is my example for i3 / sway:
```
# qutebrowser session commands
mode "qutebrowser sessions" { 
    bindsym l exec .../qute-session-scripts/load-session.sh
    bindsym s exec .../qute-session-scripts/save-session.sh
    bindsym d exec .../qute-session-scripts/delete-session.sh
    bindsym Return mode "default"
    bindsym Mod1+Shift+q mode "default"
}
bindsym Mod1+Shift+q mode "qutebrowser sessions"
```


