#!/usr/bin/bash

sudo cp /etc/greetd/config.toml ./etc/greetd/config.toml
sudo cp /etc/issue ./etc/issue
sudo cp /usr/local/bin/start-greeter.sh ./usr/local/bin/start-greeter.sh

cp ~/.zshrc ./.zshrc
cp -r ~/.config/hypr/* ./hypr/
cp -r ~/.config/waybar/* ./waybar/
cp -r ~/.config/rofi/* ./rofi/
cp -r ~/.config/nvim/* ./nvim/
cp -r ~/.config/kitty/* ./kitty/
cp -r ~/.config/fastfetch/* ./fastfetch/
cp -r ~/.config/btop/* ./btop/
cp -r ~/.config/swaync/* ./swaync/
cp ~/wallpapers/nerv-wallpaper.png ./wallpapers/
