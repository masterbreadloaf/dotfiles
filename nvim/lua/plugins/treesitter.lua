return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"asm", "bash", "cmake","c", "cpp","css", "go", "html", "json", "json5", "lua", "make", "nasm","python","zig"},
      auto_install = {enable = true},
      highlight = { enable = true},
      indent = { enable = true },
      })
   end
}
