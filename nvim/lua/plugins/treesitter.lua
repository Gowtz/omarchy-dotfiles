-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	branch = "main", -- critical for Neovim 0.12+
-- 	build = ":TSUpdate",
-- 	lazy = false,
-- 	config = function()
-- 		local config = require("nvim-treesitter.configs")
-- 		config.setup({
-- 			ensure_installed = { "lua", "javascript", "typescript", "python", "java" },
-- 			highlight = { enable = true },
-- 			indent = { enable = true },
-- 			auto_install = true,
-- 		})
-- 	end,
-- }
-- NEW (main branch)
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()
		require("nvim-treesitter").install({
			"lua",
			"javascript",
			"typescript",
			"tsx",
			"markdown",
			"markdown_inline",
			-- add whatever langs you had in your old ensure_installed
		})

		-- highlighting/indent are now enabled per-filetype via autocmd
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "javascript", "typescript", "tsx", "markdown" },
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
