-- KEYS
-- Leader Key
vim.g.mapleader = " "

-- Back To Last Position When 
local line_num = vim.fn.line("'\"")
if line_num > 2 and line_num <= vim.fn.line("$") then
  vim.cmd("normal! g'\"")
end

-- Shortcuts
nmap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, {noremap=true,silent=true})
end
imap = function(lhs, rhs)
  vim.api.nvim_set_keymap('i', lhs, rhs, {noremap=true,silent=true})
end

-- Clear Search Highlights
nmap('<leader>h', ':nohlsearch<CR>')
-- Back to Normal Mode
imap('jk', '<ESC>')
imap('kj', '<ESC>')
-- File Saving
nmap('<C-s>', ':w!<CR>')
imap('<C-s>', '<ESC>:w!<CR>')
-- Exiting
nmap('<C-q>', ':q!<CR>')
imap('<C-q>', '<ESC>:q!<CR>')
-- Save All & Exit
nmap('<C-x>', ':wqa!<CR>')
imap('<C-x>', '<ESC>:wqa!<CR>')
-- Compiling & Running File
nmap('cpy', ':!python %<CR>')
nmap('cjava', ':!java %<CR>')
nmap('cml', ':!ocaml %<CR>')
-- Navigation Through Windows
nmap('<C-K>', ':wincmd k<CR>')
nmap('<C-J>', ':wincmd j<CR>')
nmap('<C-H>', ':wincmd h<CR>')
nmap('<C-L>', ':wincmd l<CR>')
-- Resize Windows
nmap('<C-w><left>', '<C-w><')
nmap('<C-w><right>', '<C-w>>')

-- Close All Buffers
nmap('<leader>ba', ':bufdo bd<CR>')
-- Move To Buffers
nmap('<leader>bl', ':bnext<CR>')
nmap('<leader>bh', ':bprevious<CR>')
-- Managing Tabs
nmap('tn', ':tabnew<CR>')
nmap('te', ':tabedit<CR>')
-- nmap('ts', ':split<CR><C-w>w')
-- nmap('tv', ':vsplit<CR><C-w>w')
nmap('tc', ':tabclose<CR>')
nmap('<tab>', ':tabnext<CR>')
-- Paste
imap('<C-v>', '<ESC><S-p>i')
-- Undo/Redo
imap('<C-z>', '<ESC>ui')
imap('<C-y>', '<ESC><C-r>')
-- Toggle Colorizer
nmap('<leader>c', ':ColorizerToggle<CR>')
-- Text Modification - Tabs
nmap('>', '<C-v>>')
nmap('<', '<C-v><')
-- Increment
nmap('+', '<C-a>')
nmap('-', '<C-x>')
-- Delete Word Backward
nmap('dw', 'vb"_d')
-- Select All
nmap('<C-a>', 'gg<S-v>G')
-- Reload Config
nmap('<c-]>]',':so %<CR>')
