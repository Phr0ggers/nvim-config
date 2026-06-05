local builtin = require('telescope.builtin')

local map = vim.keymap.set

map('n', '<leader>ff', builtin.find_files, {
  desc = '[F]ind [F]iles',
})

map('n', '<leader>fg', builtin.live_grep, {
  desc = 'Live [G]rep',
})

map('n', '<leader>fb', builtin.buffers, {
  desc = '[F]ind [B]uffers',
})

map('n', '<leader>fh', builtin.help_tags, {
  desc = '[F]ind [H]elp Tags',
})

map('n', '<leader>fr', builtin.oldfiles, {
  desc = '[F]ind [R]ecent Files',
})

map('n', '<leader>fd', builtin.diagnostics, {
  desc = '[F]ind [D]iagnostics',
})
