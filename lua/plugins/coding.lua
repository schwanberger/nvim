return {
  -- treesitter overriding defaults, parsers added in plugins/langs
  -- also adding autocomplete, lsp servers and debuggers on a per language basis
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ignore_install = { "help" },
      ensure_installed = { "lua" },
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
  { import = "plugins.langs" },
}
