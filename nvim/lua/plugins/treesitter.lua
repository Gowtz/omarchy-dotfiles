return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- No-op when the parsers are already installed; installs only what's missing.
		require("nvim-treesitter").install({
			"lua",
			"javascript",
			"typescript",
			"tsx",
			"markdown",
			"markdown_inline",
		})

		-- Highlighting/indent are enabled per-filetype (main branch behaviour).
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "javascript", "typescript", "typescriptreact", "tsx", "markdown" },
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
				vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
