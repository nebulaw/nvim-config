-- Nvim-Tree

local status, nvim_tree = pcall(require, 'nvim-tree')

if (not status) then
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

nvim_tree.setup()



