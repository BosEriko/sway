1. Make sure Sway is on your [Home Manager (Nix)](https://github.com/BosEriko/nix/blob/master/home.nix) then run `home-manager switch`.
2. Create entry point for sway on `.config/sway/entry.sh`:
```sh
#!/bin/sh
# Stop Steam from injecting the performance overlay, as this breaks Sway
unset LD_PRELOAD

# Steam resets the PATH, so source nix again to restore it
source /home/deck/.nix-profile/etc/profile.d/nix.sh

# Since Sway is installed via Nix we need to run it with nixGL to get OpenGL working
exec nixGL sway
```
3. Make entry point executable:
```sh
chmod +x ~/.config/sway/entry.sh
```
4. Create Sway Config on `~/.config/sway/config`:
```sh
# Set the output resolution
output * resolution 1920x1080

# Create 10 workspaces
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# Focus windows
bindsym Mod1+h focus left
bindsym Mod1+j focus down
bindsym Mod1+k focus up
bindsym Mod1+l focus right

# Swap windows
bindsym Shift+Mod1+h swap left
bindsym Shift+Mod1+j swap down
bindsym Shift+Mod1+k swap up
bindsym Shift+Mod1+l swap right

# Focus workspace
bindsym Mod1+1 workspace $ws1
bindsym Mod1+2 workspace $ws2
bindsym Mod1+3 workspace $ws3
bindsym Mod1+4 workspace $ws4
bindsym Mod1+5 workspace $ws5
bindsym Mod1+6 workspace $ws6
bindsym Mod1+7 workspace $ws7
bindsym Mod1+8 workspace $ws8
bindsym Mod1+9 workspace $ws9
bindsym Mod1+0 workspace $ws10

# Start Waybar automatically
exec --no-startup-id /home/deck/.nix-profile/bin/waybar
```
5. Create a Waybar Config on `~/.config/waybar/config`:
```sh
"modules-left": [
  "sway/workspaces"
],

"sway/workspaces": {
  "format": "{name}",
  "max-length": 20,
  "label-focused": "{name}",
  "label-unfocused": "{name}",
  "label-urgent": "{name}",
  "min-width": 1
}
```
6. Add the entry point to steam as a Non-steam Game
