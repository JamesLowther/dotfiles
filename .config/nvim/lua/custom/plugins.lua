local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
        "terraform-ls",
        "tflint",
        "tfsec",
        "prettierd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "terraform",
        "hcl",
      }
    }
  },
  {
   "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right",
      },
    }
  },
}

return plugins
