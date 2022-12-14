local modules = {
  'user.options',
  'user.keymaps',
  'user.plugins',
  'user.reload',
  'user.nvim-tree',
  'user.treesitter',
  'user.telescope',
  'user.gitsigns',
  'user.mason',
  'user.lsp',
  'user.cmp',
  'user.indent-blankline',
}

-- disable netrw. using nvim tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Refresh module cache
-- doesn't really seem to be working
for _, v in pairs(modules) do
    package.loaded[v] = nil
    require(v)
end
