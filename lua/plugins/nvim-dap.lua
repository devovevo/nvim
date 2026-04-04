return {
  "mfussenegger/nvim-dap",
  dependencies = {
    -- UI dependencies
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",

    -- Mason dependencies
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    -- 1. Initialize the UI
    dapui.setup()

    -- 2. Automatically open/close the UI when debugging starts/stops
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

    -- 3. The Mason Bridge
    require("mason-nvim-dap").setup({
      -- We leave this empty because mason-tool-installer handles the downloading now
      ensure_installed = {},
      automatic_installation = false,

      -- This empty 'handlers' table is the magic! It sees 'codelldb' is installed 
      -- and automatically writes the configuration to launch your executables.
      handlers = {},
    })

    -- 4. Standard Keymaps
    vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = "Debug: Start/Continue" })
    vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = "Debug: Step Over" })
    vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = "Debug: Step Into" })
    vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end, { desc = "Debug: Toggle Breakpoint" })
  end,
}
