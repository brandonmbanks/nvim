local opts = { noremap = true, silent = true }

local function map(mode, shortcut, cmd, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, shortcut, cmd, opts)
end

-- remap space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>sv', '<cmd>lua ReloadConfig()<CR>')

-- Modes
--  normal_mode = 'n'
--  insert_mode = 'i'
--  visual_mode = 'v'
--  visual_block_mode = 'x'
--  term_mod = 't'
--  command_mode = 'c'

-- Normal --
-- better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files)
map('n', '<leader>p', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fb', builtin.buffers)
map('n', '<leader>fh', builtin.help_tags)
map('n', '<leader>gb', builtin.git_branches)

-- file explorer
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- terminal
map('t', '<Esc>', '<C-\\><C-N>') -- exit terminal mode
map('n', '<leader>t', ':vsplit term://bash<CR>')

-- resize windows with arrows
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Insert --
-- quick exit to normal mode
map('i', 'jj', '<Esc>', opts)
map('i', 'jk', '<Esc>', opts)
map('i', 'kk', '<Esc>', opts)

-- Visual
-- move text
map('v', '<A-k>', ':m .+1<CR>==', opts)
map('v', '<A-j>', ':m .-1<CR>==', opts)

-- pass whole file to indentation tool
-- gg=G''

