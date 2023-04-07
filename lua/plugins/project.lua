return {
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope").extensions.projects.projects({})
        end,
        desc = "Find project",
      },
    },
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local telescope = require("telescope")
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

      telescope.load_extension("projects")
    end,
  },
}
