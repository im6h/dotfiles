return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        bashls = {},
        bicep = {},
        yamlls = {},
        marksman = {},
        powershell_es = {},
        terraformls = {},
        helm_ls = {},
      },
    },
  },
}
