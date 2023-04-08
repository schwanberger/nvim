return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      servers = {
        gradle_ls = {},
        groovyls = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        --"gradle_ls",
        "gradle-language-server",
        --"groovyls",
        "groovy-language-server",
      })
    end,
  },
}
