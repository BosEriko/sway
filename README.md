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
output * resolution 1920x1080

bar {
  position top
}
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
