
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "html", "cssls", "pyright", "volar", "eslint", "clangd", "rust-analyzer"},
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

      local lspconfig = require("lspconfig")

      -- Setup Lua Language Server
      lspconfig.lua_ls.setup({
        capabilities = capabilities})
      lspconfig.html.setup({
        capabilities = capabilities,})
      lspconfig.cssls.setup({
        capabilities = capabilities,})
      lspconfig.pyright.setup({
        capabilities = capabilities,})

      -- Keybindings
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set({"n", "v" }, "<C-O>", vim.lsp.buf.code_action, { desc = "Code Action" })
    end
  }
}
