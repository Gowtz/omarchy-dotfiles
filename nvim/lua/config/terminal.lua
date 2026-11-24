-- Terminal + split window helpers (previously config/tt.vim)

-- Open new split panes to the right and below
vim.o.splitright = true
vim.o.splitbelow = true

-- Use <Esc> to leave terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Leave terminal mode" })

-- Start terminal buffers in insert mode
vim.api.nvim_create_autocmd("BufEnter", {
	group = vim.api.nvim_create_augroup("TerminalStartInsert", { clear = true }),
	callback = function()
		if vim.bo.buftype == "terminal" then
			vim.cmd.startinsert()
		end
	end,
})

-- Open a terminal in a horizontal split, <C-/>
vim.keymap.set("n", "<C-/>", function()
	vim.cmd.split({ args = { "term://fish" } })
	vim.cmd.resize(10)
end, { desc = "Open terminal split" })
