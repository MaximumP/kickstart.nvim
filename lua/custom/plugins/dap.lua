return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require 'dap'
    dap.adapters.php = {
      type = 'executable',
      command = 'node',
      args = { '/usr/lib/node_modules/php-debug/out/phpDebug.js' },
    }

    dap.configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'Portal',
        port = 9003,
        pathMappings = {
          ['/app'] = '/home/max/PhpstormProjects/portal/',
        },
      },
    }
  end,
}
