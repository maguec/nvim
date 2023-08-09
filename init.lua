-- Load all of my individual configurations
-- https://github.com/maguec/nvim

require('plugins')
require('globalsettings')
require('keybindings')
require('configs')
require('autocmd')
require('vimwiki')
require('myfunctions')

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
