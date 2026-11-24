return {
	{
		-- Loaded early so LSP capabilities are in place before servers start.
		-- The completion menu itself is configured in lua/plugins/nvim-cmp.lua.
		"hrsh7th/cmp-nvim-lsp",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("*", {
				capabilities = capabilities,
			})
		end,
	},
	{
		"antosha417/nvim-lsp-file-operations",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-ts-autotag").setup({})
		end,
	},
}
