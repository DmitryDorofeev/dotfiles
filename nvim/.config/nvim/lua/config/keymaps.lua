-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

for _, key in pairs({
    "<leader>wd", -- delete window, <C-W>c, now just quit
    "<leader>ww", -- other window, <C-W>p, not necessary
    "<leader>w-", -- duplicate split window <C-W>s
    "<leader>w|", -- duplicate split window <C-W>v
    "<leader>qq", -- quit all
}) do
end

vim.keymap.set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Faster [Q]uit" })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Faster [W]rite" })
