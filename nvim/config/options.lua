-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.pumblend = 0
vim.opt.winblend = 0

-- For some reason, the colorscheme doesn't load correctly on startup, so we force it to reload
vim.schedule(function()
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme == "tokyonight-night" then
		vim.cmd.colorscheme("tokyonight-night")
	end
end)
