local n_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

vim.keymap.set('n', '<leader>mr', require('micropython_nvim').run)
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 3
n_keymap('j', '<Left>')
n_keymap('k', '<Down>')
n_keymap('l', '<Up>')
n_keymap('ä', '<Right>')
