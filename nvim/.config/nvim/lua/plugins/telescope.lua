return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x", 
  dependencies = { 
    "nvim-lua/plenary.nvim" 
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    -- Add this setup block to map Ctrl+j and Ctrl+k
    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
  end,
}
