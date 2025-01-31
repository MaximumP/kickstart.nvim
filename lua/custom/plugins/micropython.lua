return {
  'jim-at-jibba/micropython.nvim',
  dependencies = { 'akinsho/toggleterm.nvim', 'stevearc/dressing.nvim' },
  keys = {
    {
      '<leader>mr',
      function()
        require('micropython_nvim').run()
      end,
      desc = '[m]ircopython [r]un',
    },
    {
      '<leader>mR',
      function()
        require('micropython_nvim').repl()
      end,
      desc = '[m]ircopython [R]epl',
    },
    {
      '<leader>mu',
      function()
        require('micropython_nvim').upload_current()
      end,
      desc = '[m]ircopython [u]pload',
    },
    {
      '<leader>ma',
      function()
        require('micropython_nvim').upload_current()
      end,
      desc = '[m]ircopython upload [a]',
    },
  },
}
