return {
  'rcarriga/nvim-dap-ui',
  dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  keys = {
    {
      '<leader>dut',
      function()
        require('dapui').toggle()
      end,
      desc = 'Toggle debug ui',
    },
  },
  config = function(_, opts)
    require('dapui').setup(opts)
  end,
}
