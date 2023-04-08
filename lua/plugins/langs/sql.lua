return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "sql",
      })
    end,
  },
}
