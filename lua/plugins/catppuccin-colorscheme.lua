return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function ()
    require("catppuccin").setup {
      transparent_background = true,
      float = {
        transparent = true,
        solid =false
      },
      integrations = {
        which_key = true,
        telescope = true,
      },
    }
  end
}
