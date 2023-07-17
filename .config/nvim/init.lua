-- Map leader key to space
vim.g.mapleader = " "

-- Set up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
local plugins = {
	"catppuccin/nvim",
	"ellisonleao/gruvbox.nvim",
	{ "windwp/nvim-autopairs", config = function()
    		require("nvim-autopairs").setup {}
	end },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "alexghergh/nvim-tmux-navigation", config = function ()
		local nvim_tmux_nav = require("nvim-tmux-navigation")
		vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
		vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
		vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
		vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
		vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
		vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
	end },
}

require("lazy").setup(plugins, opts)

-- Set up theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- General settings
vim.o.nu = true
vim.o.rnu = true

vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.scrolloff = 4

-- Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

