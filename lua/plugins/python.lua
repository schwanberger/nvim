return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "python",
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "pyright",
        "flake8",
        "black",
        "debugpy",
        "isort",
        "mypy",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.mypy,
        -- null_ls.builtins.formatting.gofmt
      })
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      --require("dap-python").setup("python3", {})
      require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
    end,
  },
}
