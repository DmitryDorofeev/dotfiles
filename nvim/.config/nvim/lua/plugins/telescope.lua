return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-ui-select.nvim", "nvim-telescope/telescope-live-grep-args.nvim" },
  pririty = 1000,
  config = function()
    local t = require("telescope")
    t.setup({
      extensions = { ["ui-select"] = require("telescope.themes").get_dropdown({}) },
    })
    t.load_extension("ui-select")

    vim.ui.select = function(items, opts, on_choice)
      require("telescope").extensions["ui-select"].select(items, opts, on_choice)
    end
  end,
  opts = function(_, opts)
    local lga = require("telescope").load_extension
    lga("live_grep_args")

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      file_ignore_patterns = {
        "node_modules",
        "dist",
        ".next",
        "coverage",
        "build",
        "ios/Pods",
        "android/build",
        "%.min%.[jt]s$",
        "^bin/",
        "^go/pkg/",
        "%.lock$",
        "%.class$",
        "%.exe$",
      },
      path_display = { "truncate" },
      mappings = { i = { ["<C-k>"] = "move_selection_previous", ["<C-j>"] = "move_selection_next" } },
    })

    opts.pickers = {
      find_files = { hidden = true, no_ignore = false },
    }

    opts.extensions = {
      live_grep_args = {
        auto_quoting = true,
        mappings = {
          i = {
            ["<C-t>"] = require("telescope-live-grep-args.actions").quote_prompt(), -- add quotes fast
            ["<C-f>"] = require("telescope-live-grep-args.actions").to_fuzzy_refine,
          },
        },
      },
    }
    return opts
  end,
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Live Grep (args)",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Buffers",
    },
    -- Language-scoped presets
    {
      "<leader>fgj",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args({
          default_text = "--type-add ts:*.{ts,tsx} --type=ts ",
        })
      end,
      desc = "Grep TS/TSX",
    },
    {
      "<leader>fgg",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args({ default_text = "--type-add go:*.go --type=go " })
      end,
      desc = "Grep Go",
    },
    {
      "<leader>fgd",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args({
          default_text = "--type-add dart:*.dart --type=dart ",
        })
      end,
      desc = "Grep Dart",
    },
  },
}
