return
{ -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- require('which-key').register({
      --   s = {
      --     name = 'Surround',
      --     a = '[S]urround [A]dd [)]',
      --     d = '[S]urrounding [D]elete',
      --     f = '[S]urrounding [f]ind (right)',
      --     r = '[S]urrounding [F]ind (left)'
      --
      --   }
      -- })
    end,
}
