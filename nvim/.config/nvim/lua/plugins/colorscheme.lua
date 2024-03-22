return {
  { "Everblush/nvim", name = "everblush" },

  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
    end,
  },

  { "shaunsingh/nord.nvim" },

  { "mhartington/oceanic-next" },

  {
    "samharju/synthweave.nvim",
  },

  {
    "ribru17/bamboo.nvim",
  },

  { "sainnhe/everforest" },

  { "shaunsingh/moonlight.nvim" },

  { "glepnir/zephyr-nvim" },

  { "cocopon/iceberg.vim" },

  { "savq/melange-nvim" },

  { "NLKNguyen/papercolor-theme" },

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

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
