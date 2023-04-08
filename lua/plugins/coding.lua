return {
  -- treesitter overriding defaults, parsers added in plugins/langs
  -- also adding autocomplete, lsp servers and debuggers on a per language basis
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-context", opts = { mode = "topline" } },
    },
    opts = {
      ignore_install = { "help" },
      ensure_installed = { "lua" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      { "<leader>ut", "<cmd>TSContextToggle<cr>", desc = "Toggle treesitter context" },
    },
    opts = {
      line_numbers = false,
      max_lines = 4,
      mode = "topline",
      trim_scope = "inner",
    },
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },
  {
    "folke/zen-mode.nvim",
    keys = { { "<leader>cz", "<cmd>ZenMode<cr>", desc = "Enter Zen-mode" } },
    config = function()
      require("zen-mode").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    version = "*",
    config = true,
  },
  { import = "plugins.langs", lazy = true },
}
