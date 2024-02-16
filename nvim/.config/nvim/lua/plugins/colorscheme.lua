return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  { "rose-pine/neovim", name = "rose-pine" },

  { "navarasu/onedark.nvim", name = "onedark" },

  { "projekt0n/github-nvim-theme" },

  { "shaunsingh/nord.nvim" },

  { "oxfist/night-owl.nvim" },

  { "talha-akram/noctis.nvim" },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { "rebelot/kanagawa.nvim" },

  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox",
    },
  },
}