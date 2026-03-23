# MAGI SYSTEM // NERV HQ TERMINAL
> GOD'S IN HIS HEAVEN. ALL'S RIGHT WITH THE WORLD.

---

## Requirements

```bash
# Core
sudo pacman -S hyprland hyprlock hyprpaper greetd

# Greeter
paru -S tuigreet

# Terminal & shell
sudo pacman -S kitty zsh fastfetch btop
paru -S atuin ascii-image-converter

# Bar & launcher
sudo pacman -S waybar rofi-wayland ttf-jetbrains-mono-nerd

# Notifications
sudo pacman -S swaync

# Audio & network
sudo pacman -S pipewire pipewire-pulse wireplumber pulsemixer networkmanager bluez
paru -S bluetui

# Neovim
sudo pacman -S neovim
# LazyVim: https://lazyvim.org
# Colorscheme: https://github.com/wkhadgar/catppuccin-nvim
```

---

## Setup

### greetd
```bash
sudo systemctl enable greetd
sudo cp start-greeter.sh /usr/local/bin/start-greeter.sh
sudo chmod +x /usr/local/bin/start-greeter.sh
sudo cp greetd/config.toml /etc/greetd/config.toml
sudo cp issue /etc/issue
```

### dotfiles
```bash
cp -r hypr/* ~/.config/hypr/
cp -r waybar/* ~/.config/waybar/
cp -r rofi/* ~/.config/rofi/
cp -r kitty/* ~/.config/kitty/
cp -r fastfetch/* ~/.config/fastfetch/
cp -r nvim/* ~/.config/nvim/
cp -r btop/* ~/.config/btop/
cp -r swaync/* ~/.config/swaync/
cp .zshrc ~/.zshrc
```

### wallpaper
```bash
mkdir -p ~/wallpapers
cp nerv-wallpaper.png ~/wallpapers/
```

### hyprpaper
Check monitor names and update `hypr/hyprpaper.conf` accordingly:
```bash
hyprctl monitors | grep Monitor
```

---

## Notes

- `atuin` must be the last line of `.zshrc`
- `/etc/issue` uses plain ASCII only — no Unicode symbols
- Rofi confirm scripts require `-lines 2` in the call
- btop: set `color_theme = "magi"` and `theme_background = false` in `btop.conf`
- swaync blur: enabled for notification popups, disabled for control center
