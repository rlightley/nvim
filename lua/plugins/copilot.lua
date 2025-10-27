return {
  -- GitHub Copilot (official plugin for auth)
  {
    "github/copilot.vim",
    lazy = false, -- Load immediately so commands are available
    config = function()
      -- Set the node path explicitly for copilot
      vim.g.copilot_node_command = "/root/.nvm/versions/node/v22.21.0/bin/node"
    end,
  },
}
