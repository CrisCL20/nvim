echo Starting instalation...
echo [DEBUG] installing neovim...
# Install stable version of neovim
cd ~
sudo apt-get install ninja-build gettext cmake unzip curl 
git clone https://github.com/neovim/neovim neovim_r
cd neovim_r && make CMAKE_BUILD_TYPE=RelWithDebInfo
git checkout stable
sudo make install
cd ~
rm -rf neovim_r

echo [DEBUG] installing nerd fonts...
# Install nerdfonts
cd ~
git clone https://github.com/ryanoasis/nerd-fonts.git nerd-fonts
cd nerd-fonts
./install.sh 
cd ~
rm -rf nerd-fonts

echo [DEBUG] moving files...
# Move config file into .config
cd ~/.config 
mv -r ~/nvim/nvim .

