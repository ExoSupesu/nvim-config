mkdir -p ~/.config/nvim/lua/
git clone https://github.com/ExoSupesu/novo.nvim.git ~/.config/nvim/lua/novo
mv  ~/.config/nvim/init.lua ~/.config/nvim/init.bak.lua
touch ~/.config/nvim/init.lua
echo "require(novo)" > ~/.config/nvim/init.lua

