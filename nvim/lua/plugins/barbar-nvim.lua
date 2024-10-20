return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  opts = {},
  version = "^1.x", -- optional: only update when a new 1.x version is released

  init = function()
    vim.g.barbar_auto_setup = false

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
    -- Close buffer
    map("n", "<A-z>", "<Cmd>BufferClose<CR>", opts)
  end,
}
