return {
	"lervag/vimtex",
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_view_forward_search_on_start = 1

		-- Compile with latexmk into ./build with synctex + nonstop mode
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			build_dir = "build",
			aux_dir = "build",
			out_dir = "build",
			options = {
				"-pdf",
				"-synctex=1",
				"-interaction=nonstopmode",
				"-file-line-error",
				"-shell-escape",
			},
			callback = 1,
		}
		vim.g.vimtex_compiler_latexmk_engines = {
			_ = "-pdf",
		}

		-- QoL
		vim.g.vimtex_quickfix_mode = 0
		vim.g.vimtex_matchparen_enabled = 1
		vim.g.vimtex_indent_enabled = 1
		vim.g.vimtex_syntax_enabled = 1
		vim.g.vimtex_complete_enabled = 1
		vim.g.vimtex_imaps_enabled = 0
		vim.g.vimtex_view_automatic = 1
		vim.g.tex_flavor = "latex"
		vim.g.tex_conceal = "abdmg"
	end,
	keys = {
		{ "<localLeader>lc", "<cmd>VimtexCompile<cr>", desc = "LaTeX: Compile" },
		{ "<localLeader>ll", "<cmd>VimtexCompileToggle<cr>", desc = "LaTeX: Auto Compile (toggle)" },
		{ "<localLeader>lv", "<cmd>VimtexView<cr>", desc = "LaTeX: View PDF" },
		{ "<localLeader>lk", "<cmd>VimtexClean<cr>", desc = "LaTeX: Clean build" },
	},
	opts = {},
}
