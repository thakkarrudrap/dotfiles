return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup()
    
    -- Grab the autocomplete capabilities from nvim-cmp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("mason-lspconfig").setup({
      -- Add the servers you actually code in here!
      ensure_installed = { "lua_ls", "clangd" }, 
      
      -- This magically wires up autocomplete for EVERY server Mason installs
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
      }
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
