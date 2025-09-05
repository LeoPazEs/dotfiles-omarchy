return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			float = {
				border = "single",
			},
		},
		capabilities = {
			workspace = {
				didChangeWatchedFiles = {
					dynamicRegistration = true,
				},
			},
		},
		servers = {
			pyright = {
				settings = {
					python = {
						analysis = {
							useLibraryCodeForTypes = true,
						},
					},
				},
			},
		},
	},
}
