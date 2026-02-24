# Install nvim via AppImage
1. `wget https://github.com/neovim/neovim/releases/download/v0.11.6/nvim-linux-{ARCH}.appimage`
   - `{ARCH}` should be replaced with the target architecture i.e., `x86_64` or `arm64`
2. `chmod +x nvim-linux-arm64.appimage` 
3. `mv nvim-linux-arm64.appimage /usr/local/bin/nvim`

# Notes
- The compile_commands.json must be symlinked to the project root dir for clangd LSP to work
  - Such as: `ln -s build/compile_commands.json .`
- Depends on clangd running for LSP support
