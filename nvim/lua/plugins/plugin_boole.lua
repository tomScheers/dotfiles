return {
	{
		"nat-418/boole.nvim",
		config = function()
			require("boole").setup({
				mappings = {
					increment = "<C-a>",
					decrement = "<C-x>",
				},
				additions = {
					-- Adds additions for the shortened days and months
					{ "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" },
					{ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" },
					-- Adds additions for other things
					{ "am", "pm" },
				},
				allow_caps_additions = {
					{ "enable", "disable" },
				},
			})
		end,
	},
}
