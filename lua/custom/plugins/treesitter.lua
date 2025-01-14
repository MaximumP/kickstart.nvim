return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'javascript', 'python', 'lua', 'html', 'css', 'twig' }, -- Specify parsers
      highlight = { enable = true }, -- Enable highlighting
      indent = { enable = true }, -- Enable indentation
    }

    -- Set fold settings
    vim.opt.foldmethod = 'expr'
    vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    vim.opt.foldlevelstart = 99 -- Start with all folds open
  end,
}
