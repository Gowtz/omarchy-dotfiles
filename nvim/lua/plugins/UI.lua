return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- or "soft" or empty
        transparent_mode = false,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
