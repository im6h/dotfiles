return {
  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },
  --{ "shaunsingh/nord.nvim" },
  { "gbprod/nord.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord", --"gruvbox-material",
    },
  },
}
