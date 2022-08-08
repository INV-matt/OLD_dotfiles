local g = vim.g
local o = vim.o
local A = vim.api
local bo = vim.bo

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent=true })
end

require('lualine-config')
require('nvim-tree-config')
require('cmp-config')
require('lsp')
require('plugins')
-- KEYMAPS

g.mapleader = " "
vim.cmd('nnoremap <c-b> :NvimTreeToggle<CR>')
vim.cmd('inoremap <c-z> <ESC>ui')
-- SETTINGS
o.termguicolors = true
o.number = true
o.numberwidth = 3
o.syntax = 'on'
bo.autoindent = true
o.scrolloff = 6

o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = false
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

o.clipboard = 'unnamedplus'

o.ignorecase = true
o.smartcase = true


o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

o.splitright = true
o.splitbelow = true

o.history = 50
