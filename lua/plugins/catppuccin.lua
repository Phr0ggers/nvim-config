-- plugins/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function ()
    require("catppuccin").setup {
      transparent_background = true,
      float = {
        transparent = true,
        solid = false
      },
      integrations = {
        which_key = true,
        telescope = true,
        lualine = {
          all = function(colors)
            ---@type CtpIntegrationLualineOverride
            return {
              normal = {
                c = { bg = colors.base },
              },
              inactive = {
                c = { bg = colors.base },
              }
            }
          end,
        },
      },
      show_end_of_buffer = false,
    }
  end,
}
