return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
      })
    end,
  },
  {
    "ray-x/starry.nvim",
    lazy = false,
  },
}
