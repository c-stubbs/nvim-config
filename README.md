# Installation

## Install nvim via AppImage
1. `wget https://github.com/neovim/neovim/releases/download/v0.11.6/nvim-linux-{ARCH}.appimage`
   - `{ARCH}` should be replaced with the target architecture i.e., `x86_64` or `arm64`
2. `chmod +x nvim-linux-arm64.appimage` 
3. `mv nvim-linux-arm64.appimage /usr/local/bin/nvim`

## Install a Nerd Font
1. Download from here: https://www.nerdfonts.com/font-downloads
2. Extract to ~/.fonts/
3. `sudo fc-cache -fv`
4. Update your font in your terminal emulator

## Clone this Repo
1. `mkdir -p ~/.config/nvim/`
2. `git clone https://github.com/c-stubbs/nvim-config.git ~/.config/nvim/`

## Launch Nvim
1. `nvim`

# Notes
- The compile_commands.json must be symlinked to the project root dir for clangd LSP to work
  - Such as: `ln -s build/compile_commands.json .`
- Depends on clangd running for LSP support
