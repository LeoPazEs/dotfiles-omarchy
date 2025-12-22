return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			-- LaTeX
			{ "kdheepak/cmp-latex-symbols" },
			{ "jc-doyle/cmp-pandoc-references", ft = { "tex", "markdown" } },
		},
		opts = function(_, opts)
			local cmp = require("cmp")
			opts.window = {
				completion = cmp.config.window.bordered({}),
				documentation = cmp.config.window.bordered({}),
			}
			opts.mapping = vim.tbl_extend("force", opts.mapping, {
				["<CR>"] = cmp.config.disable,
			})
			-- LaTeX
			opts.sources = vim.list_extend(opts.sources or {}, {
				{ name = "latex_symbols", priority = 700 },
				{ name = "pandoc_references", priority = 650 },
			})
		end,
	},
}
