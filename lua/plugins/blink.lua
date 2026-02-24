return {
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "accept" }
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    completion = {
      documentation = {
        auto_show = true,
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
