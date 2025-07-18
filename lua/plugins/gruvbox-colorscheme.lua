return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require('gruvbox').setup {
      transparent_mode = true,
      contrast = "soft",
      italic = {
        strings = false,
      }
    }
    vim.cmd.colorscheme 'gruvbox'
  end,
}
