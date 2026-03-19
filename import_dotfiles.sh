#!/usr/bin/bash

cp -r ./greetd/* /etc/greetd/
cp ./issue /etc/issue
cp ./start-greeter.sh /usr/local/bin/start-greeter.sh

cp ./.zshrc ~/.zshrc

cp -r ./hypr/* ~/.config/hypr/
cp -r ./waybar/* ~/.config/waybar/
cp -r ./rofi/* ~/.config/rofi/
cp -r ./nvim/* ~/.config/nvim/
cp -r ./kitty/* ~/.config/kitty/
cp -r ./fastfetch/* ~/.config/fastfetch/
