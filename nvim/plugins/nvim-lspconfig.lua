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
							watchForLibraryChanges = true,
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
						},
					},
				},
			},
		},
	},
}
