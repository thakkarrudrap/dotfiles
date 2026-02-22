return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master", 
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "python" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
