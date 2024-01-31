cd ~
sudo apt-get install ninja-build gettext cmake unzip curl 
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
git checkout stable
sudo make install

cd ~/.config 
cp -r ~/nvim/nvim .

