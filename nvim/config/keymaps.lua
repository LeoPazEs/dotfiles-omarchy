-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- 1. Route all deletes, changes, and cuts to the "d register
vim.keymap.set({ "n", "v" }, "d", '"dd', opts)
vim.keymap.set({ "n", "v" }, "D", '"dD', opts)
-- 2. Map Super + p to paste from the "d register
vim.keymap.set({ "n", "v" }, "<leader>p", '"dp', opts)
-- Optional: Super + Shift + p to paste *before* the cursor
vim.keymap.set({ "n", "v" }, "<leader>P", '"dP', opts)
