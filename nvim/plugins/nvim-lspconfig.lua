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
				capabilities = {
					workspace = {
						didChangeWatchedFiles = {
							dynamicRegistration = true,
						},
					},
				},
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
