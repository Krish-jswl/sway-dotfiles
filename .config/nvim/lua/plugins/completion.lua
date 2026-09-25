require("blink.cmp").setup({
  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    menu = { border = "rounded" },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
  },

  keymap = {
    preset = "none",

    ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
    ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
    ["<CR>"] = { "accept", "fallback" },
    ["<C-e>"] = { "hide" },
    ["<C-n>"] = { "select_next" },
    ["<C-p>"] = { "select_prev" },
  },

  signature = {
    enabled = true,
  },

  sources = {
    default = { "lsp", "path", "buffer", "snippets" },
  },

  -- Route the snippets source through LuaSnip (set up in plugins/snippets.lua)
  -- instead of blink's default native vim.snippet backend, so friendly-snippets
  -- actually shows up in completion.
  snippets = { preset = "luasnip" },
})
