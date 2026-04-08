# MAGI SYSTEM // NERV HQ TERMINAL
> GOD'S IN HIS HEAVEN. ALL'S RIGHT WITH THE WORLD.

---

## Requirements

Get the AUR manager (here, paru for compatibility):
```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

Then, get the packages:
```bash
sudo pacman -S --needed - < requirements.pacman
```

---

## Install

```bash
git clone https://github.com/wkhadgar/dotfiles
cd dotfiles
source ./import_dotfiles.sh
```

---

## Sync back (if anything changed)

```bash
cd dotfiles
source ./sync_dotfiles.sh

git add.
git commit -m "Your changes message"
git push
```

---

## Post-install

- Enable greetd: `sudo systemctl enable greetd`
- Check monitor names and update `hypr/hyprpaper.conf`: `hyprctl monitors | grep Monitor`
- `atuin` must remain the last line of `.zshrc`
