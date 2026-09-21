require("mini.pick").setup({
  window = {
    config = { border = "rounded" },
  },
})

require("mini.extra").setup()

local pick = require("mini.pick")
local extra = require("mini.extra")

local map = function(lhs, rhs, desc)
  vim.keymap.set("n", lhs, rhs, { desc = desc })
end

map("<leader>ff", pick.builtin.files, "Find files")
map("<leader>fg", pick.builtin.grep_live, "Live grep")
map("<leader>fb", pick.builtin.buffers, "Buffers")
map("<leader>fh", pick.builtin.help, "Help")

map("<leader>fr", function()
  extra.pickers.lsp({ scope = "references" })
end, "LSP references")

map("<leader>fs", function()
  extra.pickers.lsp({ scope = "document_symbol" })
end, "Document symbols")

map("<leader>fd", function()
  extra.pickers.diagnostic()
end, "Diagnostics")
