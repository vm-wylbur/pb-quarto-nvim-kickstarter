-- PB specific plugins.
return {
  {'Pocco81/auto-save.nvim', config = true },
  'famiu/bufdelete.nvim',
  'tpope/vim-sleuth',
  'rmagatti/auto-session',
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
