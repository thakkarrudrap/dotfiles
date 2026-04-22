return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    connections = {
      ssh_configs = { 
        -- Points the plugin to your existing SSH config
        vim.fn.expand "$HOME/.ssh/config",
        "/etc/ssh/ssh_config",
      },
    },
    mounts = {
      base_dir = vim.fn.expand "$HOME/.sshfs_mounts", -- Where remote files will be mounted locally
      unmount_on_exit = true, -- Automatically clean up when you close Neovim
    },
    handlers = {
      -- Triggers when you successfully connect
      on_connect = {
        change_dir = true, -- Changes Neovim's working directory to the mount
      },
      on_disconnect = {
        clean_mount_folders = false,
      },
    },
  },
  config = function(_, opts)
    require("remote-sshfs").setup(opts)
    require("telescope").load_extension("remote-sshfs")
  end,
  keys = {
    -- Keymaps for quick access
    { "<leader>rc", "<cmd>lua require('telescope').extensions['remote-sshfs'].connect()<cr>", desc = "SSHFS: Connect" },
    { "<leader>rd", "<cmd>lua require('remote-sshfs.api').disconnect()<cr>", desc = "SSHFS: Disconnect" },
    { "<leader>re", "<cmd>lua require('remote-sshfs.api').edit()<cr>", desc = "SSHFS: Edit configs" },
  },
}
