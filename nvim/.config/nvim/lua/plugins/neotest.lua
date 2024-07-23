return {
  { "mfussenegger/nvim-dap-python" },
  { "nvim-neotest/neotest-python" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-python",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          python = "venv/bin/python",
          env = { DJANGO_SETTINGS_MODULE = "citadel_backend.settings.test" },
          dap = { justMyCode = false },
          args = { "--keepdb" },
          runner = "django",
        },
      },
    },
  },
}
