return {
	"linux-cultist/venv-selector.nvim",
	branch = "main", -- Use this branch for the new version
	cmd = "VenvSelect",
	enabled = true,
	opts = {
		options = {
			picker = "snacks",
		},
	},
	--  Call config for python files and load the cached venv automatically
	ft = "python",
	keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
