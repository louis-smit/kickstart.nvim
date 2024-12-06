return {
  {
    'nvim-pack/nvim-spectre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      replace_engine = {
        ['sed'] = {
          cmd = 'sed',
          args = {
            '-i',
            '',
            '-E',
          },
        },
      },
    },
    config = function(_, opts)
      require('spectre').setup(opts)

      vim.keymap.set('n', '<leader>R', '<cmd>lua require("spectre").toggle()<CR>', {
        desc = 'Toggle Spectre',
      })
      vim.keymap.set('n', '<leader>rw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
        desc = 'Search current word',
      })
      vim.keymap.set('v', '<leader>rw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
        desc = 'Search current word',
      })
      vim.keymap.set('n', '<leader>rp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
        desc = 'Search on current file',
      })
    end,
  },
}
