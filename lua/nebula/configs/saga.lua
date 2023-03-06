-- Lspsaga

local status, saga = pcall(require, 'lspsaga')

if (not status) then
  return
end

saga.setup {
  -- options
  request_timeout = 5000,

  -- preview
  preview = {
    line_above = 2,
    line_below = 8,
  },
  -- scroll preview
  scroll_preview = {
    scroll_down = '<c-d>',
    scroll_up = '<c-u>',
  },
  -- diagnostics
  diagnostics = {
    on_insert_follow = true,
    show_code_action = true,
    max_width = 0.6,
    keys = {
      exec_action = 'o',
      quit = 'q',
      go_action = 'g',
    }
  },
  -- definition
  definition = {
    edit = '<c-c>e',
    quit = 'q',
  },
  -- rename
  rename = {
    quit = 'q',
    exec = '<CR>',
    mark = 'x',
    confirm = '<CR>',
    in_select = true,
  },
  -- code actions
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  },
  -- outline
  outline = {
    win_position = 'right',
    win_with = '',
    win_width = 25,
    show_detail = true,
    auto_preview = true,
  },
  -- finder
  finder = {
    max_height = 0.4,
    force_max_height = true,
    keys = {
      jump_to = 'p',
      edit = {'e','<CR>'},
      vsplit = 's',
      split = 'i',
      tabe = 't',
      tabnew = 'T',
      quit = {'q','quit'},
    },
  },
  -- lightbulb
  lightbulb = {
    enable = true,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = false,
  },
}

-- diagnostics
nmap('<leader>dp','<cmd>Lspsaga diagnostics_jump_prev<CR>')
nmap('<leader>dn','<cmd>Lspsaga diagnostics_jump_next<CR>')
nmap('<leader>db','<cmd>Lspsaga show_buf_diagnostics<CR>')
nmap('<leader>dl','<cmd>Lspsaga show_line_diagnostics<CR>')

-- code actions
nmap('ca','<cmd>Lspsaga code_action<CR>')

-- goto
nmap('gd','<cmd>Lspsaga goto_definition<CR>')
nmap('gp','<cmd>Lspsaga peek_definition<CR>')
nmap('gt','<cmd>Lspsaga goto_type_definition<CR>')

-- rename
nmap('<leader>r','<cmd>Lspsaga rename<CR>')
nmap('<leader-c>R','<cmd>Lspsaga rename ++project<CR>')

-- docs
nmap('K','<cmd>Lspsaga hover_doc<CR>')
nmap('K]','<cmd>Lspsaga hover_doc ++keep<CR>')

-- outline
nmap('<leader>o','<cmd>Lspsaga outline<CR>')

-- finder
nmap('<leader>lf','<cmd>Lspsaga lsp_finder<CR>')


