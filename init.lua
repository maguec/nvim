-- Load all of my individual configurations
-- https://github.com/maguec/nvim

require('globalsettings')
require('keybindings')
require('plugins')
require('configs')
require('autocmd')

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
