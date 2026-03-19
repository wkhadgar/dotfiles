#!/usr/bin/bash

cp /etc/greetd/config.toml ./greetd/
cp /etc/issue ./issue
cp /usr/local/bin/start-greeter.sh ./start-greeter.sh

cp ~/.zshrc ./.zshrc

cp -r ~/.config/hypr/* ./hypr/
cp -r ~/.config/waybar/* ./waybar/
cp -r ~/.config/rofi/* ./rofi/
cp -r ~/.config/nvim/* ./nvim/
cp -r ~/.config/kitty/* ./kitty/
cp -r ~/.config/fastfetch/* ./fastfetch/
