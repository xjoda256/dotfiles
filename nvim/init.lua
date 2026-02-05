-----------------------------
-- ~/.config/nvim/init.lua --
-- ×Joda™ -------------------
-----------------------------

-- vim options --
vim.o.number = true
vim.o.showmatch = true
vim.o.cursorline = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = false
vim.o.softtabstop = 2
vim.o.signcolumn = "yes"
vim.o.smartindent = true
vim.o.winborder = "rounded"

-- keybinds --
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>c", ":ColorizerToggle<CR>")

-- plugins --
vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-mini/mini.pick" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = "https://github.com/nvimdev/dashboard-nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/folke/snacks.nvim" },
	-- colorschemes --
	{ src = "https://github.com/neanias/everforest-nvim" },
	{ src = "https://github.com/vague-theme/vague.nvim" },
	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/Mofiqul/dracula.nvim" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/sainnhe/sonokai" },
	{ src = "https://github.com/norcalli/nvim-colorizer.lua" },
	{ src = "https://github.com/uZer/pywal16.nvim" },
})

-- plugin setup --
require("mini.pick").setup()
require("oil").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"pyright",
		"texlab",
		"bashls",
		"marksman",
		"rust-analyzer",
		"phpactor",
		"vim-language-server",
		"tinymist",
	},
})
require("dashboard").setup()

-- enable language servers --
vim.lsp.enable({
	"lua_ls",
	"bashls",
	"marksman",
	"rust-analyzer",
	"gopls",
	"phpactor",
	"sql-language-server",
	"vim-language-server",
	"tinymist",
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

-- folding options --
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4

-- set colorscheme --
vim.cmd([[colorscheme catppuccin-frappe]])
vim.cmd([[highlight StatusLine none]])

