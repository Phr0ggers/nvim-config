return {
  'nvim-lualine/lualine.nvim',
  dependecies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local custom_catppuccin = require('lualine.themes.catppuccin')
    custom_catppuccin.normal.c.bg = require("catppuccin.palettes").get_palette("mocha").mantle

    require('lualine').setup {
      options = {
        theme = custom_catppuccin,
        globalstatus = true,
      }
    }
  end,
}
