-- more keybinds!
--
-- keep center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '{', '{zz')
vim.keymap.set('n', '}', '}zz')
vim.keymap.set('n', ']]', ']]zz')
vim.keymap.set('n', 'G', 'Gzz')
-- move selected up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- delete into blackhole buffer and paste
vim.keymap.set('x', '<leader>p', [["_dP]])
-- yank into system clipboard
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- delete into blackhole
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', [["_d]])
-- open tmux-sessionizer
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
-- next and previous search result, compiler errors, or other commands that generate a list of locations
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
-- lsp
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'definition' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'hover' })
vim.keymap.set('n', '<leader>lw', vim.lsp.buf.workspace_symbol, { desc = 'workspace_symbol' })
vim.keymap.set('n', '<leader>lo', vim.diagnostic.open_float, { desc = 'diagnostic.open_float' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_next, { desc = 'diagnostic.goto_next' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { desc = 'diagnostic.goto_prev' })
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, { desc = 'code_action' })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { desc = 'references' })
vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, { desc = 'rename' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'format' })
vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, { desc = 'signature_help' })
vim.keymap.set('n', '<C-n>', '<cmd>Lexplore<CR>')
-- telescope
-- fix winblend in transparent
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
