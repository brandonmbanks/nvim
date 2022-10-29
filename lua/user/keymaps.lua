local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>sv', '<cmd>lua ReloadConfig()<CR>', {})

-- Modes
--  normal_mode = 'n'
--  insert_mode = 'i'
--  visual_mode = 'v'
--  visual_block_mode = 'x'
--  term_mod = 't'
--  command_mode = 'c'

-- Normal --
-- better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts) -- this is not working from Explorer but ctrl-w l does

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})

-- file explorer
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-N>', {}) -- exit terminal mode
vim.keymap.set('n', '<leader>t', ':vsplit term://bash<CR>', {})

-- resize windows with arrows
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Insert --
-- quick exit to normal mode
keymap('i', 'jj', '<Esc>', opts)
keymap('i', 'jk', '<Esc>', opts)
keymap('i', 'kk', '<Esc>', opts)

-- Visual
-- move text
keymap('v', '<A-k>', ':m .+1<CR>==', opts)
keymap('v', '<A-j>', ':m .-1<CR>==', opts)

