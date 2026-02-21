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
