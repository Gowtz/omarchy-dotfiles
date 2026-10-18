vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.smartindent = true
vim.o.background = "dark" -- or "light" for light mode

-- vim.cmd([[colorscheme gruvbox]])
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.g.mapleader = " "

-- Folding (treesitter-based, works with your installed parsers)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""

-- Disable unused remote providers (silences :checkhealth warnings)
-- Remove/comment a line if you start using that language's plugins
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- local severity = vim.diagnostic.severity
-- vim.diagnostic.config({
-- 	signs = {
-- 		text = {
-- 			[severity.ERROR] = " ",
-- 			[severity.WARN] = " ",
-- 			[severity.HINT] = "󰠠 ",
-- 			[severity.INFO] = " ",
-- 		},
-- 	},
-- })
