return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  
  config = function()
    vim.keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>')
    vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>')

    require('nvim-tree').setup()
  end,
}
