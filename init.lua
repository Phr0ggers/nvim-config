-- [[ Basic Settings ]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true 

vim.o.number = true

vim.o.mouse = 'a'

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

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
  require 'plugins.treesitter',
  require 'plugins.miniNvim',
})
