return {
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  opts = {
    keymap = {
      preset = "default",
      ["<C-y>"] = { "accept" }
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500
      },
    },

    enabled = function()
      local node = vim.treesitter.get_node()

      if node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
          return false
      else
          return true
      end
    end,

    sources = {
        default = function(ctx)
             local node = vim.treesitter.get_node()
             if vim.bo.filetype == 'lua' then
                 return { 'lsp', 'path' }
             elseif node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
                 return { '' }
             else
                 return { 'lsp', 'path', 'snippets', 'buffer' }
             end
         end

     }
  }
}
