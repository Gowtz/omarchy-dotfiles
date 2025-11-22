-- tailwind-tools.lua
return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
		-- REMOVE: "neovim/nvim-lspconfig"
	},
	opts = {
		lsp = "tailwindcss", -- IMPORTANT FIX: avoids deprecated lspconfig framework
	},
}
