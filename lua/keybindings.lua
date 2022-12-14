-- Deal with the crappy Mac Keyboard
vim.cmd("command WQ wq")
vim.cmd("command Wq wq")
vim.cmd("command W w")

---------------------------------------------------------------------
-- Telescope Setups
---------------------------------------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
