-- My Global setting cribbed from 
-- https://github.com/numToStr/dotfiles/blob/master/neovim/.config/nvim/lua/numToStr
local g = vim.g
local o = vim.o

-- Darkness is my friend
o.background  = 'dark'

-- Better editor UI
o.number         = true
o.numberwidth    = 4
o.relativenumber = true
o.signcolumn     = 'yes:2'
o.cursorline     = true
o.mouse          = ""

-- Map <leader> to ,
g.mapleader      = ','
g.maplocalleader = ','

-- color
vim.cmd[[colorscheme tokyonight-night]]

-- neovide only settings
if vim.g.neovide then
    o.guifont = "DroidSansM Nerd Font Mono:h16"
    vim.o.mouse = 'a'
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap("n", "<S-Insert>", '~', {noremap=true, silent=true})
    vim.api.nvim_set_keymap("i", "<S-Insert>", '~', {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<Insert>", '`', {noremap=true, silent=true})
    vim.api.nvim_set_keymap("i", "<Insert>", '`', {noremap=true, silent=true})
    vim.api.nvim_set_keymap("n", "<Home>", '"+p', {noremap=true, silent=true})
    vim.api.nvim_set_keymap("i", "<Home>", '"+p', {noremap=true, silent=true})
end
