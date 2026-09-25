require('vague').setup({
  transparent = true, -- If true, background is not set
  bold = true, -- Disable bold globally
  italic = true, -- Disable italic globally
  on_highlights = function(hl, colors) end,
  colors = {
    func = "#bc96b0",
    keywor = "#787bab",
    string = "#8a739a",
    number = "#8f729e",
  },
})


vim.cmd.colorscheme("vague")
