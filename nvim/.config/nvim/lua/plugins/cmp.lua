return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- Lazy load when you start typing
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- Connects cmp to your LSP servers
    "hrsh7th/cmp-buffer",       -- Suggests words already written in the current file
    "hrsh7th/cmp-path",         -- Auto-completes file system paths
    "L3MON4D3/LuaSnip",         -- A snippet engine (strictly required by nvim-cmp)
    "saadparwaiz1/cmp_luasnip", -- Connects the snippet engine to cmp
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body) -- Tells cmp how to expand code snippets
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Ctrl+k to go up the list
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Ctrl+j to go down the list
        ["<C-Space>"] = cmp.mapping.complete(),     -- Manually trigger the menu
        ["<C-e>"] = cmp.mapping.abort(),            -- Close the window
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Hit Enter to confirm selection
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP suggestions have highest priority
        { name = "luasnip" },  -- Snippets are second
        { name = "buffer" },   -- Buffer words are third
        { name = "path" },     -- File paths are fourth
      }),
    })
  end,
}
