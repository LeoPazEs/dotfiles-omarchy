return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			float = {
				border = "single",
			},
		},
		servers = {
			pylsp = {
				enabled = false,
			},
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
			texlab = {
				keys = {},
				settings = {
					texlab = {
						auxDirectory = "build",
						build = {
							executable = "latexmk",
							args = {
								"-pdf",
								"-interaction=nonstopmode",
								"-synctex=1",
								"-file-line-error",
								"-shell-escape",
								"-outdir=build",
								"%f",
							},
							onSave = true,
							forwardSearchAfter = true,
						},
						forwardSearch = {
							executable = "evince",
							args = { "%p" },
						},
						chktex = { onOpenAndSave = true, onEdit = false },
					},
				},
			},
		},
	},
}
