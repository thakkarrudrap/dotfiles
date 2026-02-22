return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x", -- Use the stable release branch
  dependencies = { 
    "nvim-lua/plenary.nvim" -- A strictly required helper library
  },
  config = function()
    local builtin = require("telescope.builtin")
    
    -- Press Space + f + f to Search for Files
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    
    -- Press Space + f + g to Search for Text inside files (Live Grep)
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    
    -- Press Space + f + b to search through currently open buffers
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
  end,
}
