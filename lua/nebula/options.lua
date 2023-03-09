-- LOCAL VARIABLES
local set = vim.opt

-- SETTERS
set.encoding = "utf8"
set.number = true
set.tabstop = 2
set.autoindent = true
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.textwidth = 80
-- set.guicursor = block
set.swapfile = false
set.wrap = false
set.relativenumber = false
set.ignorecase = true
set.autoread = true
set.smartcase = true
set.incsearch = true
set.lazyredraw = true
set.magic = true
set.showmatch = true
set.errorbells = false
set.visualbell = false
set.termguicolors = true

-- Neovide
if (vim.g.neovide) then
  vim.opt.guifont = "MonaLisa-Regular:h15"
  vim.opt.linespace = 0
	vim.g.neovide_scale_factor = 1.4
  vim.g.neovide_transparency = 0.72
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 2
  vim.g.neovide_no_idle = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_fullscreen = false
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
	vim.g.neovide_cursor_vfx_particle_lifetime = 2.2
  vim.g.neovide_cursor_vfx_particle_density = 12
  -- vim.g.neovide_floating_blur_amount_x = 8.0
	-- vim.g.neovide_floating_blur_amount_y = 8.0
end




