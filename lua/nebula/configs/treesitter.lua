-- Treesitter configuration

local status, ntsc = pcall(require, 'nvim-treesitter.configs')

if (not status) then
  return
end

ntsc.setup {
  ensure_installed = {
    'vue',
    'cpp',
    'lua',
    'python',
    'vim',
    'help',
    'java',
    'rust',
    'ruby',
    'c',
    'ocaml',
    'html',
    'javascript',
  },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

require("nvim-treesitter.configs").setup {
  highlight = {},
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    max_file_lines = nil,
    -- disable = {},
    -- colors = {}, 
    -- termcolors = {}
  },

}

nmap('<C-N>', ':NvimTreeFindFileToggle<CR>')


