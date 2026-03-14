return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  init = function()
    -- 1. Disable the annoying ghost text at the end of your code
    vim.g.gitblame_display_virtual_text = 0 
    
    -- 2. Format the message to look clean in the statusline
    vim.g.gitblame_message_template = "   <author> • <date> • <summary>"
  end,
}
