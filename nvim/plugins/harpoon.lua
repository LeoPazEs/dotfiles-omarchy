return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	keys = function()
		local keys = {
			{
				"<leader>H",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Harpoon File",
			},
			{
				"<leader>h",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
					vim.defer_fn(function()
						local buf = vim.api.nvim_get_current_buf()
						if vim.bo[buf].filetype == "harpoon" then
							vim.keymap.set("n", "<C-v>", function()
								harpoon.ui:select_menu_item({ vsplit = true })
							end, { buffer = buf })
							vim.keymap.set("n", "<C-s>", function()
								harpoon.ui:select_menu_item({ split = true })
							end, { buffer = buf })
						end
					end, 0)
				end,
				desc = "Harpoon Quick Menu",
			},
		}

		for i = 1, 5 do
			table.insert(keys, {
				"<leader>" .. i,
				function()
					require("harpoon"):list():select(i)
				end,
				desc = "Harpoon to File " .. i,
			})
		end
		return keys
	end,
}
