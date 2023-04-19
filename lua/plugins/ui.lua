return {
  { "EdenEast/nightfox.nvim", event = "VeryLazy" },
  { "ellisonleao/gruvbox.nvim", event = "VeryLazy" },
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
      })
    end,
  },
  { "ray-x/starry.nvim", event = "VeryLazy" },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    event = "VeryLazy",
    opts = {
      transparent = true,
      ending_tildes = true,

      code_style = {
        comments = "none",
      },

      -- color palette: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
      highlights = {
        Folded = { bg = "$bg0" },
        NormalFloat = { bg = "$bg0" },
        FloatBorder = { bg = "$bg0" },
        NotifyBackground = { bg = "$bg0" },

        Twilight = { bg = "$none", fg = "$bg2" },
        ZenBg = { fg = "$fg" },

        GitSignsChange = { fg = "$yellow" },
        GitSignsChangeLn = { fg = "$yellow" },
        GitSignsChangeNr = { fg = "$yellow" },

        SignatureMarkText = { fg = "$red" },
        SignatureMarkerText = { fg = "$green" },

        TelescopeBorder = { fg = "$grey" },
        TelescopePromptBorder = { fg = "$grey" },
        TelescopeResultsBorder = { fg = "$grey" },
        TelescopePreviewBorder = { fg = "$grey" },
        TelescopeTitle = { fg = "$fg" },

        MiniStarterHeader = { fg = "$blue" },
        MiniStarterFooter = { fg = "$grey" },
        MiniStarterItemPrefix = { fg = "$red" },

        WhichKeySeparator = { fg = "$grey" },
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufEnter",
    opts = {
      user_default_options = {
        names = false,
        tailwind = true,
        sass = { enable = true },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", desc = "Open buffer 1" },
      { "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", desc = "Open buffer 2" },
      { "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", desc = "Open buffer 3" },
      { "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", desc = "Open buffer 4" },
      { "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", desc = "Open buffer 5" },
      { "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", desc = "Open buffer 6" },
      { "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", desc = "Open buffer 7" },
      { "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", desc = "Open buffer 8" },
      { "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", desc = "Open buffer 9" },
    },
    opts = {
      options = {
        --tab_size = 0,
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
        separator_style = { "", "" },
      },
      highlights = {
        buffer_selected = {
          italic = false,
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { icon = ":" },
        },
      },
      messages = {
        --view = "mini",
        view_search = false,
      },
      presets = {
        command_palette = false,
        lsp_doc_border = true,
      },
    },
  },
  -- Undo history visualizer
  {
    "mbbill/undotree",
    keys = {
      { "<leader>uu", "<Cmd>UndotreeToggle<CR>", desc = "Toggle undo tree" },
    },
  },

  -- Auto-resize windows according to golden ratio
  -- {
  --   "beauwilliams/focus.nvim",
  --   event = "VimEnter",
  --   keys = {
  --     { "yogv", "<Cmd>FocusToggle<CR>", desc = "toggle golden ratio view" },
  --   },
  --   opts = function(_, opts)
  --     opts.excluded_filetypes = opts.excluded_filetypes or {}
  --     vim.list_extend(opts.excluded_filetypes, { "fugitive", "gitcommit", "Outline" })
  --     opts.signcolumn = false
  --     return opts
  --   end,
  -- },
  {
    "max397574/better-escape.nvim",
    opts = {
      mapping = { "jk" },
    },
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    config = function()
      require("tokyonight").setup({
        --transparent = true,
        style = "night",
      })
    end,
  },
  {
    "ishan9299/modus-theme-vim",
    event = "VeryLazy",
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "rmehri01/onenord.nvim" },
  {
    "LazyVim/LazyVim",
    event = "VeryLazy",
    opts = {
      --colorscheme = "dayfox",
      colorscheme = "nightfox",
      --colorscheme = "catppuccin",
      --colorscheme = "tokyonight-day",
      --colorscheme = "tokyonight-moon",
      --colorscheme = "modus-operandi",
      --colorscheme = "modus-vivendi",
      --colorscheme = "onedark",
      --colorscheme = "dracula",
      --colorscheme = "rose-pine",
      --colorscheme = "onenord",
    },
  },
}
