return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			float = {
				border = "single",
			},
		},
		servers = {
			pyright = {
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
						},
					},
				},
			},
		},
	},
}
