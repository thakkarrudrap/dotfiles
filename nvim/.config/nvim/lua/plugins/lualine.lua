return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
    "f-person/git-blame.nvim", -- Ensure Lualine knows about git-blame
  },
  config = function()
    local git_blame = require("gitblame")

    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true, 
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_c = {
          "filename",
          -- Add the Git Blame component right here!
          {
            git_blame.get_current_blame_text,
            cond = git_blame.is_blame_text_available, -- Hide it if the file isn't in Git
          }
        }
      }
    })
  end,
}
