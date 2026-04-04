return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-tool-installer").setup({
      ensure_installed = {
        -- The best C/C++ debugger for Linux
        "codelldb",

        -- Standard C/C++ formatter
        "clang-format",

        -- Standard C/C++ linter
        "cpplint",

        "lua_ls",

        "rust_analyzer",

        "clangd",

        "verible",

        "pyright",

        "starpls",

        "terraformls",

        "yamlls",

        "ansiblels",

        "neocmake"

        -- You can easily add Python, Bash, or JSON tools here later!
      },
      -- Automatically update these tools in the background
      auto_update = true,
      run_on_start = true,
    })
  end,
}
