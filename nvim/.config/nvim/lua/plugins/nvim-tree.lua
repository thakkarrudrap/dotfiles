return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- For file icons
  config = function()
    require("nvim-tree").setup({
      -- Tells the tree to automatically update its root when you use :cd
      sync_root_with_cwd = true,
      
      -- Automatically updates the tree to highlight the file you are currently working in
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    })
    
    -- Press Space + e to toggle the file explorer
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
  end,
}
