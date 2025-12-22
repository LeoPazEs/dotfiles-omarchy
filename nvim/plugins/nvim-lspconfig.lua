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
				enabled = false,
				capabilities = {
					workspace = {
						didChangeWatchedFiles = {
							dynamicRegistration = true,
						},
					},
				},
			},
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							-- install Mypy with :PylspInstall pylsp-mypy
							pylsp_mypy = {
								dmypy = true,
								enabled = true,
								report_progress = true,
								-- Point to the Neovim venv Python
								overrides = {
									"--python-executable",
									os.getenv("VIRTUAL_ENV") and os.getenv("VIRTUAL_ENV") .. "/bin/python"
										or vim.fn.exepath("python"),
									true,
								},
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
