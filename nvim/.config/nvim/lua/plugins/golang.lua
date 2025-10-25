return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = function()
          vim.cmd(":TSUpdate go")
        end,
      },
      {
        "fredrikaverpil/neotest-golang",
        version = "*",
        build = function()
          vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait()
        end,
      },
    },
    config = function()
      local config = {
        runner = "gotestsum",
        testify_enabled = true,
      }
      require("neotest").setup({
        adapters = {
          require("neotest-golang")(config),
        },
      })
    end,
  },
}
