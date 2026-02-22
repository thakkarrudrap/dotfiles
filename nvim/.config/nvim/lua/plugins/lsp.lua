return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" }, 
      automatic_enable = true, 
    })
    
    -- LSP Keymaps
    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'LSP keybindings',
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      end,
    })
  end,
}
