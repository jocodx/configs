#!/bin/bash

echo "#"
echo "# Downloadin plug.vim for plugin management..."
echo "#*********************************************"
echo "#"
echo "curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
echo ""

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "#"
echo "#******************************"
echo "# !!! From vim run ':PlugInstall'. "
echo "# !!! Read plugins.vim for additional installation steps for certain plugins."
echo "#************************************************************************"
echo "#"
