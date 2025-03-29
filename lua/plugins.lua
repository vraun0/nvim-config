local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd"
      }
    }

  },
  {
    'xeluxee/competitest.nvim',
	  dependencies = 'MunifTanjim/nui.nvim',
	  config = function() require('competitest').setup() end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
}
return plugins
