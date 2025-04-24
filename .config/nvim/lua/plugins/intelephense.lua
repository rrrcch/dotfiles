return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      intelephense = {
        init_options = {
          globalStoragePath = vim.fn.stdpath("cache") .. "/intelephense",
        },
      },
    },
  },
}
