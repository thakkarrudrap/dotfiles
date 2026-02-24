require("config.options")
require("config.keymaps")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Tell Lazy to load everything in the lua/plugins/ folder
require("lazy").setup("plugins")

vim.opt.tabstop = 4      -- A TAB character looks like 4 spaces
vim.opt.shiftwidth = 4   -- Size of an indent
vim.opt.softtabstop = 4  -- Number of spaces tabs count for while editing

