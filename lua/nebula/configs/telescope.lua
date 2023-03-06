-- Telescope

local t_status, telescope = pcall(require, 'telescope')
local a_status, actions = pcall(require, 'telescope.actions')

if (not t_status or not a_status) then
  return
end

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require('telescope').extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close,
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      mappings = {
        ['i'] = {
          ['<C-w>'] = function()
            vim.cmd [[normal vbd]]
          end,
        },
        ['n'] = {
          ['N'] = fb_actions.create,
          ['h'] = fb_actions.goto_parent_dir,
          ['/'] = function()
            vim.cmd [[startinsert]]
          end
        }
      }
    }
  }
}

telescope.load_extension('file_browser')

local bi = require('telescope.builtin')
local opts = { noremap=true, silent=true }
local kset = vim.keymap.set

-- KEYMAPS

-- diagnostics
kset('n', '<space>dd', bi.diagnostics, opts)

-- git (disable temporarily)
--kset('n', '<space>gf', bi.git_files, opts)
--kset('n', '<space>gs', bi.git_status, opts)
--kset('n', '<space>gb', bi.git_branches, opts)
--kset('n', '<space>gc', bi.git_commits, opts)

-- file browser
kset('n', '<space><space>', bi.find_files, opts)
kset('n', '<space>fo', bi.oldfiles, opts)
kset('n', '<space>ff', "<cmd>lua require('telescope').extensions.file_browser.file_browser({path = '%:p:h',cwd = telescope_buffer_dir(),respect_git_ignore = false,hidden = true, grouped = true,previewer = false,initial_mode = 'normal',layout_config = {height = 40}})<CR>", opts)

-- search in files 
kset('n', '<space>ll', bi.live_grep, opts)

-- colorschemes
kset('n', '<space>cs', bi.colorscheme, opts)


