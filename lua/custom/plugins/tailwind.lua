return {
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {
      extension = {
        queries = {}, -- a list of filetypes having custom `class` queries
        patterns = { -- a map of filetypes to Lua pattern lists
          -- example:
          -- rust = { "class=[\"']([^\"']+)[\"']" },
          -- javascript = { "clsx%(([^)]+)%)" },
        },
      },
    },
  },
}
