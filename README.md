# Install nvim via AppImage
wget https://github.com/neovim/neovim/releases/download/v0.11.6/nvim-linux-arm64.appimage
chmod +x nvim-linux-arm64.appimage 
mv nvim-linux-arm64.appimage nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# Notes
- The compile_commands.json must be symlinked to the project root dir for clangd LSP to work
  - Such as: `ln -s build/compile_commands.json .`
