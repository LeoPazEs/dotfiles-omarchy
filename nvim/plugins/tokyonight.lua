return {
	"folke/tokyonight.nvim",
	priority = 1000,
	init = function()
		vim.g.tokyonight_dark_float = false
	end,
	opts = {
		style = "night",
	},
}
