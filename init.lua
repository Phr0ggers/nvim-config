-- [[ Basic Settings ]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- recom. for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

vim.o.number = true

vim.o.mouse = 'a'

vim.o.showmode = false

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.confirm = true

vim.opt.clipboard = 'unnamedplus'

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})



vim.g.rust_recommended_style = 0
-- [[ Custom Keymaps ]]

vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')



-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- [[ Plugin Section ]]

require('lazy').setup({
  'nmac427/guess-indent.nvim',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  require 'plugins.treesitter',
  require 'plugins.miniNvim',
  require 'plugins.nvim-tree',
  require 'plugins.gruvbox-colorscheme',
  require 'plugins.catppuccin-colorscheme',
  require 'plugins.gitsigns',
  require 'plugins.telescope',
  require 'plugins.LSP',
  require 'plugins.autocomplete',
  require 'plugins.whichkey',
  require 'plugins.autopairs',
  require 'plugins.lualine',
  -- require 'plugins.vim-obsession',
  'vyfor/cord.nvim',
})


-- [[ Colortheme ]]

vim.cmd.colorscheme 'catppuccin'
