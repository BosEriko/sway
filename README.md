# Sway (Window Manager)
Download [Nix](https://github.com/BosEriko/nix) as your package manager then install [Sway](https://search.nixos.org/packages?query=sway&show=sway).

## Install Sway
```sh
nix-env -iA nixpkgs.sway nixpkgs.waybar nixpkgs.nerd-fonts.jetbrains-mono
```

## Install nixGL
```sh
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl
nix-channel --update
nix-env -iA nixgl.auto.nixGLDefault
```

## Clone the Repository
```sh
git clone https://github.com/BosEriko/sway.git ~/.config/sway
```

## Symlink Waybar Config
```sh
mkdir -p ~/.config/waybar
ln -s ~/.config/sway/waybar.config ~/.config/waybar/config
ln -s ~/.config/sway/waybar.css ~/.config/waybar/style.css
```

## Add as a Non-steam Game
Add `~/.config/sway/entry.sh` as a Non-steam Game.
