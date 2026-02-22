return {
  "folke/tokyonight.nvim",
  lazy = false,    -- We want the theme to load immediately on startup
  priority = 1000, -- Highest priority so it loads before any other UI plugins
  config = function()
    -- You can choose between: "tokyonight", "tokyonight-night", "tokyonight-storm", "tokyonight-day", "tokyonight-moon"
    vim.cmd.colorscheme("tokyonight-storm") 
  end,
}
