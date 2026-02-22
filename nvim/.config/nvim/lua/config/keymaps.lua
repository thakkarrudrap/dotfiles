local map = vim.keymap.set

-- Split window navigation (Ctrl + h, j, k, l to move between panes)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Commands to create splits (Space + | for vertical, Space + - for horizontal)
map("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" })

-- Make exiting the built-in terminal easier (Esc instead of the default Ctrl-\ Ctrl-n)
-- map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
