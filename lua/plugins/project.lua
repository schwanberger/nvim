local M = {
  "ahmedkhalf/project.nvim",
  lazy = false,
  -- event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
}

M.init = function()
  --keymaps
  require("which-key").register({
    ["<leader>p"] = { name = "+projects" },
  })
end

M.config = function()
  require("project_nvim").setup({
    manual_mode = false,
    detection_methods = { "lsp", "pattern" },
    patterns = { ".git", "Makefile", "package.json" },
    ignore_lsp = { "null-ls" },
    exclude_dirs = {},
    show_hidden = false,
    silent_chdir = true,
    scope_chdir = "global",
    datapath = vim.fn.stdpath("data"),
  })

  require("telescope").load_extension("projects")
  vim.keymap.set("n", "<leader>po", "<cmd>Telescope projects<cr>", { desc = "Open recent project list" })
end

return M
