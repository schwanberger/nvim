return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "markdown",
      })
    end,
  },
  {
    -- Markdown editing/reading works particularly well with SoftWrapMode
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup()
    end,
  },
}
