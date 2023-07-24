return {
  updater = {
    remote = "origin",
    channel = "stable",
    version = "latest",
  },

  colorscheme = "catppuccin",

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
      },
      disabled = { "tsserver", "eslint_d", "prettierd" },
    },
    servers = {
      "lua_ls",
      "tsserver",
      "graphql",
      "relay_lsp",
    },
  },
}
