return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
    opts = {
      lsp = {
        capabilities = function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          capabilities.textDocument.codeAction = {
            dynamicRegistration = false,
            codeActionLiteralSupport = {
              codeActionKind = {
                valueSet = {
                  "",
                  "quickfix",
                  "refactor",
                  "refactor.extract",
                  "refactor.inline",
                  "refactor.rewrite",
                  "source",
                  "source.organizeImports",
                },
              },
            },
          }
          return capabilities
        end,
        settings = {
          lineLength = 160,
          inlayHints = false,

          dart = {
            inlayHints = false,
          },
        },
      },
    },
  },
}
