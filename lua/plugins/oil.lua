return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    keymaps = {
       -- Disable nav keys with Tmux
      ["<C-h>"] = false,
      ["<C-l>"] = false,

      ["g."] = "actions.toggle_hidden",
      ["R"] = "actions.refresh"
    }
  },

  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent dir" },
  },
  -- Optional dependencies
  -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
