return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp", -- Add this so we can grab its capabilities
  },
  config = function()
    require("mason").setup()
    
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" }, 
      automatic_enable = true, 
    })
    
    -- NEW: Tell Neovim to broadcast nvim-cmp capabilities to EVERY LSP server natively
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    vim.lsp.config("*", {
      capabilities = capabilities,
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
