-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.guifont = "JetBrains Mono:h14"

require("snacks").setup({
  image = {
    max_width = 80,
    max_height = 80,
    float = true,
    inline = true,
  },
})
