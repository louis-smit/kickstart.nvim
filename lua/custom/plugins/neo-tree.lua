return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    opts = {
      filesystem = {
        follow_current_file = { enabled = true },
      },
    },
    config = function(_, opts)
      require('neo-tree').setup(opts)
    end,
    keys = {
      { '<leader><tab>', ':Neotree toggle left<CR>', silent = true, desc = 'Left File Explorer' },
    },
  },
}
