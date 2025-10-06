return {
  "mikavilpas/yazi.nvim",
  version = "*", -- latest stable version
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    {
      "<leader>-",
      "<cmd>Yazi<cr>",
      mode = { "n", "v" },
      desc = "Open Yazi at the current file",
    },
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      mode = { "n" },
      desc = "Open Yazi in nvim's working directory",
    },
    {
      "<C-Up>",
      "<cmd>Yazi toggle<cr>",
      mode = { "n" },
      desc = "Resume the last Yazi session",
    },
  },
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = "<F1>",
    },
  },
  config = function(_, opts)
    require("yazi").setup(opts)
  end,
  init = function()
    -- Disable netrw if you're replacing it with Yazi
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}

