-- Set map leader to be space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enables nerd font for custom icons and stuff
vim.g.have_nerd_font = true

-- Uses line numbers
vim.opt.number = true

-- Diables the current mode in the command line
vim.opt.showmode = false

-- Uses global clipboard
vim.opt.clipboard = "unnamedplus"

-- Avoid line wrapping
vim.opt.wrap = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes:1"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure how white spaces are precieved
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

-- Get relative number lines
vim.opt.relativenumber = true

-- Enable auto-indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Spaces over tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Enable filetype-specific indentation
vim.cmd("filetype plugin indent on")

-- Use colors in messages
vim.opt.termguicolors = true

-- Dissable mouse
vim.opt.mouse = ""

vim.opt.timeoutlen=50

vim.api.nvim_create_augroup("BashFileType", { clear = true })
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    group = "BashFileType",
    pattern = {"/home/tom/.bash_env", "/home/tom/.bash_prompts"},
    command = "setlocal filetype=sh"
})

-- Add custom save message

-- Define an autocommand group
vim.api.nvim_create_augroup("CustomWriteMessage", { clear = true })

-- Set up the autocommand
vim.api.nvim_create_autocmd("BufWritePost", {
	group = "CustomWriteMessage",
	pattern = "*",
	callback = function()
		-- The message you want to display
		local message = { { "ETC???", "MyHighlight" } }

		-- Define the highlight group
		vim.api.nvim_set_hl(0, "MyHighlight", { fg = "#b243ef", bold = true, italic = true })

		-- Print the custom message
		vim.api.nvim_echo(message, false, {})
	end,
})
