local publish_diagnostics = vim.lsp.handlers['textDocument/publishDiagnostics']

return {
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
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
                  '',
                  'quickfix',
                  'refactor',
                  'refactor.extract',
                  'refactor.inline',
                  'refactor.rewrite',
                  'source',
                  'source.organizeImports',
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
        handlers = {
          ['textDocument/publishDiagnostics'] = function(err, result, ctx, config)
            -- Skip diagnostics for generated Dart files
            if result and result.uri and result.uri:match '%.g%.dart$' then
              return
            end
            publish_diagnostics(err, result, ctx, config)
          end,
        },
      },
    },
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      {
        'fredrikaverpil/neotest-golang',
        version = '*',
        build = function()
          vim.system({ 'go', 'install', 'gotest.tools/gotestsum@latest' }):wait()
        end,
      },
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-golang' {
            runner = 'go',
            testify_enabled = true,
            go_test_args = { '-v', '-count=1' },
            env = {
              PROJECT_ROOT = vim.fn.getcwd(),
            },
          },
        },
      }
    end,
    keys = {
      { '<leader>t', '', desc = '+test' },
      {
        '<leader>ta',
        function()
          require('neotest').run.attach()
        end,
        desc = 'Attach to Test (Neotest)',
      },
      {
        '<leader>tt',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run File (Neotest)',
      },
      {
        '<leader>tT',
        function()
          require('neotest').run.run(vim.uv.cwd())
        end,
        desc = 'Run All Test Files (Neotest)',
      },
      {
        '<leader>tr',
        function()
          require('neotest').run.run()
        end,
        desc = 'Run Nearest (Neotest)',
      },
      {
        '<leader>tl',
        function()
          require('neotest').run.run_last()
        end,
        desc = 'Run Last (Neotest)',
      },
      {
        '<leader>ts',
        function()
          require('neotest').summary.toggle()
        end,
        desc = 'Toggle Summary (Neotest)',
      },
      {
        '<leader>to',
        function()
          require('neotest').output.open { enter = true, auto_close = true }
        end,
        desc = 'Show Output (Neotest)',
      },
      {
        '<leader>tO',
        function()
          require('neotest').output_panel.toggle()
        end,
        desc = 'Toggle Output Panel (Neotest)',
      },
      {
        '<leader>tS',
        function()
          require('neotest').run.stop()
        end,
        desc = 'Stop (Neotest)',
      },
      {
        '<leader>tw',
        function()
          require('neotest').watch.toggle(vim.fn.expand '%')
        end,
        desc = 'Toggle Watch (Neotest)',
      },
    },
  },
}
