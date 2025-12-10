return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    opts = { style = 'moon', transparent = true },
  },

  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    opts = { style = 'moon', transparent = true },
  },

  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
        transparent = true,
        style = 'darker',
      }

      -- require('onedark').load()
    end,
  },

  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    opts = {
      transparent_background = true,
      lsp_styles = {
        underlines = {
          errors = { 'undercurl' },
          hints = { 'undercurl' },
          warnings = { 'undercurl' },
          information = { 'undercurl' },
        },
      },
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        mini = true,
        navic = { enabled = true, custom_bg = 'lualine' },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
      -- vim.cmd.colorscheme 'catppuccin'
    end,
    specs = {
      {
        'akinsho/bufferline.nvim',
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ''):find 'catppuccin' then
            opts.highlights = require('catppuccin.special.bufferline').get_theme()
          end
        end,
      },
    },
  },
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },

  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000,
    opts = { transparent_background = true },
  },

  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = { transparent = true },
  },

  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = true },
    config = function(_, _)
      -- vim.cmd.colorscheme 'kanagawa-paper'
    end,
  },

  {
    'jpwol/thorn.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = true },
  },

  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    opts = { nord_disable_background = true },
    config = function(_, _)
      vim.g.nord_disable_background = true
      -- vim.cmd.colorscheme 'nord'
    end,
  },

  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    opts = { transparent = { bg = true } },
    config = function(_, opts)
      require('nordic').setup(opts)
      -- require('nordic').load()
    end,
  },

  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        transparent = true,
      }
      -- require('bamboo').load()
    end,
  },

  {
    'savq/melange-nvim',
    init = function()
      -- vim.cmd.colorscheme 'melange'
    end,
  },

  {
    'xero/miasma.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd 'colorscheme miasma'
    end,
  },

  {
    'ramojus/mellifluous.nvim',
    config = function()
      require('mellifluous').setup {} -- optional, see configuration section.
      -- vim.cmd 'colorscheme mellifluous'
    end,
  },

  {
    'samharju/synthweave.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'synthweave'
      -- vim.cmd.colorscheme 'synthweave-transparent'
    end,
  },

  {
    'yashguptaz/calvera-dark.nvim',
    config = function(_, _)
      vim.g.calvera_transparent_bg = true
      -- vim.cmd.colorscheme 'calvera'
    end,
  },

  {
    'shaunsingh/seoul256.nvim',
    lazy = false,
    priority = 1000,
    config = function(_, _)
      vim.g.seoul256_background = 236
      vim.g.seoul256_disable_background = true
      -- vim.cmd.colorscheme 'seoul256'
    end,
  },

  {
    'srcery-colors/srcery-vim',
    lazy = false,
    priority = 1000,
    config = function(_, _)
      vim.g.srcery_bg_passthrough = true
      -- vim.cmd.colorscheme 'srcery'
    end,
  },

  {
    'NLKNguyen/papercolor-theme',
    lazy = false,
    priority = 1000,
    config = function(_, _)
      -- vim.cmd.colorscheme 'papercolor'
    end,
  },
}
