# Sway (Window Manager)
1. Install nixGL to run Sway:
```sh
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl
nix-channel --update
nix-env -iA nixgl.auto.nixGLDefault
```
2. Make sure Sway is on your [Home Manager (Nix)](https://github.com/BosEriko/nix/blob/master/home.nix) then run `home-manager switch`.
3. Create entry point for sway on [~/.config/sway/entry.sh](.config/sway/entry.sh).
4. Make it executable `chmod +x ~/.config/sway/entry.sh`.
5. Create Sway Config on [~/.config/sway/config](.config/sway/config).
6. Create Waybar Config on [~/.config/waybar/config](.config/waybar/config).
7. Add the entry point to steam as a Non-steam Game.
