return {
  -- Want to try this one but needs neovim nightly
  -- {
  --   'luckasRanarison/tailwind-tools.nvim',
  --   dependencies = { 'nvim-treesitter/nvim-treesitter' },
  --   opts = {}, -- your configuration
  -- },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        tailwindcss = {
          -- exclude a filetype from the default_config
          filetypes_exclude = {},
          -- add additional filetypes to the default_config
          filetypes_include = {
            'elixir',
            'heex',
            'templ',
          },
          -- to fully override the default_config, change the below
          -- filetypes = {}
        },
      },
      setup = {
        tailwindcss = function(_, opts)
          local tw = require 'lspconfig.server_configurations.tailwindcss'
          opts.filetypes = opts.filetypes or {}

          -- Add default filetypes
          vim.list_extend(opts.filetypes, tw.default_config.filetypes)

          -- Remove excluded filetypes
          --- @param ft string
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,
      },
    },
  },
}
