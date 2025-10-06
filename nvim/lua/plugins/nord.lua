return {
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").setup({
      transparent = true,
      styles = {
        comments = { italic = true },
        functions = { italic = true },
        keywords = { italic = true },
      },
    })
    vim.cmd.colorscheme("nord")
  end,
}