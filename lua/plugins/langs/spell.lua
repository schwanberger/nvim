return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "ltex-ls",
      })
    end,
  },
}
