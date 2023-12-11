
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
Export the gloabl environment variable DMENU in your .bashrc / .zshrc file, which contains your dmenu-compatible command (`dmenu`, `rofi`, `wofi` etc.):
```shell
export DMENU="dmenu"
```
If you want to use different programs for different scripts, you can just overwrite the variable in the respective scripts (see .sh files).

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



