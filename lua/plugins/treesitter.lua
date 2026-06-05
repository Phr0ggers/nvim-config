-- plugins/treesitter.lua
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  opts = {
    ensure_installed = {
      'latex',
      'python',
      'lua',
      'vim',
      'vimdoc',
      'bash',
      'markdown',
      'c',
      'rust'
    },

    auto_install = true,

    highlight = {
      enable = true,
      disable = { "latex" },
    },

    indent = {
      enable = true,
      disable = {'latex'}
    },
  },
}
