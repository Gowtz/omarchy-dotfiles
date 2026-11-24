return {
    "tpope/vim-fugitive",
    config = function()
        -- Fugitive is mostly learned through its buffers (`:Git` for the status
        -- window, `g?` for buffer-local help). These mappings just cover the
        -- commands you reach for from a normal buffer. Cheat sheet lives at
        -- ~/Documents/fugitive-cheatsheet.md and opens with <leader>gh.
        local map = function(mode, key, rhs, desc)
            vim.keymap.set(mode, key, rhs, { desc = "Git: " .. desc })
        end

        -- Status window: the centre of gravity, where s/u/dd/cc/... live.
        map("n", "<leader>gs", "<Cmd>Git<CR>", "status")

        -- Commit and sync.
        map("n", "<leader>gc", "<Cmd>Git commit<CR>", "commit")
        map("n", "<leader>ga", "<Cmd>Git commit --amend<CR>", "amend last commit")
        map("n", "<leader>gp", "<Cmd>Git push<CR>", "push")
        map("n", "<leader>gu", "<Cmd>Git pull<CR>", "pull")
        map("n", "<leader>gf", "<Cmd>Git fetch<CR>", "fetch")

        -- History and blame. `:Git log` loads a fugitive object buffer with the
        -- full map set live (<CR> opens the commit under the cursor).
        map("n", "<leader>gl", "<Cmd>Git log --oneline<CR>", "history (browsable log)")
        map("n", "<leader>gL", "<Cmd>Git log --oneline -- %<CR>", "history of current file")
        map("n", "<leader>gb", "<Cmd>Git blame<CR>", "blame current file")
        map("v", "<leader>gb", ":Git blame<CR>", "blame selected lines")
        map("v", "<leader>gl", ":Gclog<CR>", "history of selected lines")

        -- Diffs against the index.
        map("n", "<leader>gd", "<Cmd>Gdiffsplit<CR>", "diff vs index")
        map("n", "<leader>gD", "<Cmd>Gvdiffsplit<CR>", "vertical diff vs index")

        -- Stage the current file (`:Gwrite` takes no range, so no visual map).
        map("n", "<leader>gw", "<Cmd>Gwrite<CR>", "stage file")
        map("n", "<leader>gr", "<Cmd>Gread<CR>", "reset buffer to index")

        -- Open the current file/commit in the browser.
        map("n", "<leader>gB", "<Cmd>GBrowse<CR>", "open on remote")

        map("n", "<leader>gh", function()
            vim.cmd.edit(vim.fn.fnameescape(vim.fn.expand("~/Documents/fugitive-cheatsheet.md")))
        end, "fugitive cheat sheet")
    end,
}
