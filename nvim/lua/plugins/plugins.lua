--    [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
--  To check the current status of your plugins, run
--    :Lazy
--
--  To update plugins you can run
--    :Lazy update
local plugins = {
	require("plugins.plugin_lualine"),
	require("plugins.plugin_telescope"),
	require("plugins.plugin_keybinding"),
	require("plugins.plugin_lsp"),
	require("plugins.plugin_autocomplete"),
	require("plugins.plugin_format"),
	require("plugins.plugin_colorscheme"),
	require("plugins.plugin_treesitter"),
	require("plugins.plugin_gitsigns"),
	require("plugins.plugin_mini"),
	require("plugins.plugin_boole"),
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "numToStr/Comment.nvim", opts = {} },
	{ "jiangmiao/auto-pairs" },
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({
				default = true;
			})
		end,
	},

	--  Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}

require("lazy").setup(plugins)
