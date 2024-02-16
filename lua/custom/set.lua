-- Disable cursor styling.
vim.opt.guicursor = ""

-- Set linenumber format.
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

-- Disable netrw.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 15

-- Disable always copy to system clipboard.
vim.o.clipboard = ''
