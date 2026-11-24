return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		local autopairs = require("nvim-autopairs")
		autopairs.setup({
			disable_filetype = { "TelescopePrompt", "vim" },
			fast_wrap = {},
		})

		-- Let <CR> auto-insert the closing pair after a completion is confirmed
		local ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
		if ok then
			require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end
	end,
}
