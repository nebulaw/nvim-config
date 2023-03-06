-- Toggle Terminal

local status, toggleterm = pcall(require, 'toggleterm')

if (not status) then
  return
end

toggleterm.setup {
  size = 4,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = false,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
}
nmap('<C-t>', '<cmd>ToggleTerm<CR>')


