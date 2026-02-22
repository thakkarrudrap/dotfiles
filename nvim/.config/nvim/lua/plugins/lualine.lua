return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Pulls in your font icons
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto", -- Automatically matches your active color theme
        globalstatus = true, -- Use one statusline for all splits instead of one per pane
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
      },
    })
  end,
}
