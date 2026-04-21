-- ~/.config/nvim/lua/plugins/remote-nvim.lua

return {
  "amitds1997/remote-nvim.nvim",
  version = "*", -- Pin to GitHub releases for stability
  dependencies = {
    "nvim-lua/plenary.nvim",         -- Standard Lua functions used by many plugins
    "MunifTanjim/nui.nvim",          -- Required to build the plugin's UI
    "nvim-telescope/telescope.nvim", -- Required for picking between different remote connections
  },
  config = function()
    require("remote-nvim").setup({
      -- Devpod configuration
      devpod = {
        binary = "devpod", -- Specify the devpod binary path if it's not in your PATH
        docker_binary = "docker", -- Specify the docker binary path
        ssh_config_file_path = vim.fn.expand("~/.ssh/config"),
      },
      
      -- SSH Configuration
      ssh_config = {
        ssh_binary = "ssh",
        scp_binary = "scp",
        ssh_config_file_paths = { vim.fn.expand("~/.ssh/config") },
        
        -- Automatically handle standard SSH prompts
        ssh_prompts = {
          {
            match = "password:",
            type = "secret",
            value_type = "static",
            value = "",
          },
          {
            match = "continue connecting (yes/no/[fingerprint])?",
            type = "plain",
            value_type = "static",
            value = "",
          },
        },
      },
      
      -- Offline mode configuration (Prevents downloading releases if you don't have internet)
      offline_mode = {
        enabled = false,
        no_github_api_calls = false,
      },

      -- The client_callback defines how your local Neovim client is launched once the remote server starts.
      -- By default, remote-nvim tries to open a new terminal window. 
      -- Below is an example of how you can customize it for specific terminal emulators (like tmux or WezTerm).
      
      -- client_callback = function(port, workspace_config)
      --   -- Example: Open in a new tmux window
      --   local cmd = ("tmux new-window -n 'Remote' 'nvim --server localhost:%s --remote-ui'"):format(port)
      --   vim.fn.jobstart(cmd, {
      --     detach = true,
      --   })
      -- end,
    })
    
    -- Optional: Set up Telescope integration for easier connection management
    require("telescope").load_extension("remote-nvim")
  end,
  
  -- Keymaps for quick access
  keys = {
    { "<leader>rc", "<cmd>RemoteStart<cr>", desc = "Remote: Start/Connect" },
    { "<leader>ri", "<cmd>RemoteInfo<cr>", desc = "Remote: Info" },
    { "<leader>rx", "<cmd>RemoteStop<cr>", desc = "Remote: Stop" },
    { "<leader>rl", "<cmd>RemoteLog<cr>", desc = "Remote: View Logs" },
  },
}
