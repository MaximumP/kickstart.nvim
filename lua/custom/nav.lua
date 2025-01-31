local n_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

-- vim.keymap.set('n', '<leader>mr', require('micropython_nvim').run)
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 3
n_keymap('j', '<Left>')
n_keymap('k', '<Down>')
n_keymap('l', '<Up>')
n_keymap('ä', '<Right>')
vim.keymap.set('n', '<leader>deo', vim.diagnostic.open_float, { noremap = true, silent = true, desc = 'Show diagnostic error' })
vim.keymap.set('n', '<leader>den', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = 'Go to next error' })
vim.keymap.set('n', '<leader>nr', function()
  vim.o.relativenumber = not vim.o.relativenumber
end, { noremap = true, silent = true, desc = 'Toggle relative line numbers' })
