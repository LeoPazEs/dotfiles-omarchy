return {
	"mason-org/mason.nvim",
	opts = {
		ui = {
			border = "single",
		},
		ensure_installed = {
			-- Python Formatter
			"isort",
			-- Latex texlab (build/forward search)
			"texlab",
			-- Bash
			"shellcheck",
			"bash-language-server",
			"shfmt",
		},
	},
}
