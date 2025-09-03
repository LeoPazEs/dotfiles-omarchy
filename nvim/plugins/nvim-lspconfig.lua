return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			float = {
				border = "single",
			},
		},
		servers = {
			pyright = { enabled = false },
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							-- install Mypy with :PylspInstall pylsp-mypy
							pylsp_mypy = {
								enabled = true,
								report_progress = true,
							},
							flake8 = {
								enabled = false,
							},
							isort = { enabled = false },
							black = { enabled = false },
							autopep8 = { enabled = false },
							mccabe = { enabled = false },
							pycodestyle = { enabled = false },
							pyflakes = { enabled = false },
						},
					},
				},
			},
		},
	},
}
