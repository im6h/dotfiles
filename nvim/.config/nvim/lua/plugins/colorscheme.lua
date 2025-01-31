return {
  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },
  --{ "shaunsingh/nord.nvim" },
  { "gbprod/nord.nvim" },
  { "loctvl842/monokai-pro.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material", --"gruvbox-material",
    },
  },
}

