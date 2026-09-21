require("tokyonight").setup({
  style = "night", -- "storm", "moon", "night", "day"
  transparent = true, -- disable setting background color
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})

vim.cmd.colorscheme("tokyonight")
