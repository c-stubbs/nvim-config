return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
        "c",
        "cpp",
        "lua",
        "vim",
        "vimdoc"
  },
      highlight = {
          enable = true
      }
  }
}
