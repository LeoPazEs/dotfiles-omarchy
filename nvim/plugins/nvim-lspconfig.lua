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
			texlab = {
				keys = {
					{ "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
				},
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
							executable = "zathura",
							args = { "--synctex-forward", "%l:1:%f", "%p" },
						},
						chktex = { onOpenAndSave = true, onEdit = false },
					},
				},
			},
		},
	},
}
