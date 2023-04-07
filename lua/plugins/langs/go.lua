return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "go",
        "gomod",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      servers = {
        golangci_lint_ls = {},
        gopls = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "gopls",
        "golangci-lint-langserver",
        "delve",
      })
    end,
  },
  -- Add go.nvim
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
    event = "CmdlineEnter",
    ft = { "go", "gomod", "gosum", "gowork" },
  },

  -- Add gopher.nvim
  {
    "olexsmir/gopher.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    config = true,
  },

  -- setup gofmt for golang
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.gofmt,
        -- null_ls.builtins.formatting.gofmt
      })
    end,
  },
  {
    "leoluz/nvim-dap-go",
    event = "VeryLazy",
    config = function()
      require("dap-go").setup()
    end,
  },
}
