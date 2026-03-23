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

## Install

```bash
git clone https://github.com/wkhadgar/dotfiles
cd dotfiles
bash import_dotfiles.sh
```

---

## Sync back

```bash
bash sync_dotfiles.sh
```

---

## Post-install

- Enable greetd: `sudo systemctl enable greetd`
- Check monitor names and update `hypr/hyprpaper.conf`: `hyprctl monitors | grep Monitor`
- Set btop theme: open btop, press `t` and select `magi`
- `atuin` must remain the last line of `.zshrc`
