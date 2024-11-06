return {
	{
		"folke/which-key.nvim",
		event = "VimEnter", -- changed to correct event for plugin loading
		config = function()
			local wk = require("which-key")

			-- Setup which-key
			wk.setup({
				icons = {
					breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
					separator = "➜", -- symbol used between a key and its label
					group = "+", -- symbol prepended to a group
				},
				win = {
					border = "rounded",
				},
				show_help = true,
			})

			-- Register key mappings for normal mode
			wk.add({
				{ "<leader>c", group = "[C]ode" },
				{ "<leader>c_", hidden = true },
				{ "<leader>d", group = "[D]ocument" },
				{ "<leader>d_", hidden = true },
				{ "<leader>h", group = "Git [H]unk" },
				{ "<leader>h_", hidden = true },
				{ "<leader>r", group = "[R]ename" },
				{ "<leader>r_", hidden = true },
				{ "<leader>s", group = "[S]earch" },
				{ "<leader>s_", hidden = true },
				{ "<leader>t", group = "[T]oggle" },
				{ "<leader>t_", hidden = true },
				{ "<leader>w", group = "[W]orkspace" },
				{ "<leader>w_", hidden = true },
			})

			-- Register key mappings for visual mode
			wk.add({
				{ "<leader>h", desc = "Git [H]unk", mode = "v" },
			}, { mode = "v" })

		end,
	},
}
