return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "everforest",
    },
    init = function()
      -- vim.opt.background = "light"
    end,
  },

  { "rose-pine/neovim", name = "rose-pine", opts = { styles = { transparency = true } } },
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim", opts = { options = { transparent = true } } },
  { "craftzdog/solarized-osaka.nvim" },
  { "shaunsingh/moonlight.nvim" },
  { "embark-theme/vim" },
  { "sho-87/kanagawa-paper.nvim" },
  { "samharju/synthweave.nvim" },
  { "cocopon/iceberg.vim" },
  { "ellisonleao/gruvbox.nvim" },
  { "oxfist/night-owl.nvim" },
  { "bluz71/vim-nightfly-colors" },
  {
    "sainnhe/everforest",
    opts = {},
    config = function()
      vim.g.everforest_transparent_background = 2
    end,
  },
  { "dark-orchid/neovim" },
  { "xero/miasma.nvim" },
  { "uloco/bluloco.nvim" },
  { "ramojus/mellifluous.nvim" },
  { "Yazeed1s/oh-lucy.nvim" },
  { "NTBBloodbath/sweetie.nvim" },
  { "yorik1984/newpaper.nvim" },
  { "Mofiqul/adwaita.nvim" },
  { "alexmozaidze/palenight.nvim" },
  { "b0o/lavi.nvim" },
  { "FrenzyExists/aquarium-vim" },
  { "talha-akram/noctis.nvim" },
  { "bkegley/gloombuddy" },
  { "murtaza-u/gruvqueen" },
  { "sainnhe/gruvbox-material" },
  { "f4z3r/gruvbox-material.nvim", opts = { background = { transparent = true } } },
  { "DmitryDorofeev/serika.nvim", opts = { transparent = true } },
  { "akinsho/horizon.nvim" },
  { "p00f/alabaster.nvim" },
  { "jpwol/thorn.nvim" },
  { "junegunn/seoul256.vim" },
  { "alexvzyl/nordic.nvim" },
}
