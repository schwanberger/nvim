return {
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   version = "*",
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function()
  --     require("nvim-tree").setup({
  --       update_focused_file = {
  --         enable = true,
  --         update_cwd = true,
  --       },
  --       vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<cr>", { desc = "Toggle NvimTree" }),
  --     })
  --   end,
  -- },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },
}
