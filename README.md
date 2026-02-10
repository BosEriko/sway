1. Make sure Sway is on your [Home Manager (Nix)](https://github.com/BosEriko/nix/blob/master/home.nix) then run `home-manager switch`.
2. Create entry point for sway on [~/.config/sway/entry.sh](.config/sway/entry.sh).
3. Make it executable `chmod +x ~/.config/sway/entry.sh`.
4. Create Sway Config on [~/.config/sway/config](.config/sway/config).
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
