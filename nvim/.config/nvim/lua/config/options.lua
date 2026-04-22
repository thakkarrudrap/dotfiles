-- General editor settings
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Show relative line numbers
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard

if vim.env.SSH_CLIENT or vim.env.SSH_TTY then
	vim.g.clipboard = {
		name = 'OSC 52',
		copy = {
			['+'] = require('vim.ui.clipboard.osc52').copy('+'),
			['*'] = require('vim.ui.clipboard.osc52').copy('*'),
		},
		paste = {
			['+'] = require('vim.ui.clipboard.osc52').paste('+'),
			['*'] = require('vim.ui.clipboard.osc52').paste('*'),
		},
	}
end

-- Split Window Behavior
vim.opt.splitright = true      -- Vertical splits will automatically open to the right
vim.opt.splitbelow = true      -- Horizontal splits will automatically open below

-- Set the leader key to Spacebar (used for custom shortcuts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
