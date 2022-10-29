-- :help options
vim.opt.backup = false              -- disables backup file when writing a file
vim.opt.swapfile = false            -- disables swap file
vim.opt.undofile = true             -- unables persistent undo by saving undo history

vim.opt.timeoutlen = 1000           -- max time to wait for mapped sequence to complete

vim.opt.clipboard = "unnamedplus"   -- allows nvim to access system clipboard

vim.opt.cmdheight = 1               -- cmd line height
vim.opt.pumheight = 10              -- pop up menu height
vim.opt.signcolumn = "yes"          -- always display signcolumn to not move text
vim.opt.showmode = false            -- disable vim mode like -- INSERT --

vim.opt.splitbelow = true
vim.opt.splitright = true

-- vim.opt.iskeyword:append "-"        -- makes a word like foo-bar one word

-- line numbers
vim.opt.number = true               -- display line numbers
vim.opt.relativenumber = true       -- display relative line numbers
vim.opt.cursorline = true           -- highlights the cursor line
vim.opt.cursorcolumn = true         -- highlights the cursor column

vim.opt.scrolloff = 8               -- minimum number of lines to keep above and below cursor
vim.opt.sidescrolloff = 8           -- number number of columns to keep right and left of cursor

vim.opt.fileencoding = "utf-8"

vim.opt.wrap = false                -- displays lines as one long line
vim.opt.tabstop = 4                 -- number of spaces that a tab in a file counts for
vim.opt.softtabstop = 4             -- number of spaces inserted for a tab while editing
vim.opt.shiftwidth = 4              -- number of spaces to use for each step of indent
vim.opt.expandtab = true            -- converts tabs to spaces
vim.opt.smartindent = true          -- smart indent when starting a new line

-- searching
vim.opt.hlsearch = true             -- highlight previous search pattern
vim.opt.incsearch = true            -- show where the search pattern matches as its typed
vim.opt.ignorecase = true           -- ingores case in search pattern
vim.opt.smartcase = true            -- overrides ignorecase if search pattern contains upper case

-- vim.opt.guicursor = ""
vim.opt.guifont = "monospace:h17"   -- font to use in gui apps

