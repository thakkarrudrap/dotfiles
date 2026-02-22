return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- For file icons
  config = function()
    require("nvim-tree").setup()
    -- Press Space + e to toggle the file explorer
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
  end,
}
