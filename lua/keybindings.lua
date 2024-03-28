---------------------------------------------------------------------
---   Global Keybindings go Here
---   look in ftplugin for the keybindings for each filetype
---------------------------------------------------------------------

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

---------------------------------------------------------------------
-- Git Settings
---------------------------------------------------------------------
vim.keymap.set("n", "<leader>gt", ":Neogit<CR>", {})

---------------------------------------------------------------------
--- Toggle the left side
---------------------------------------------------------------------
local myfunctions = require "myfunctions"
vim.keymap.set('n', '<leader>tt', myfunctions.togglenums, {})
-- Toggle the LSP recommendations
vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xc", function() require("trouble").close() end)
-- Toggle NvimTree
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

