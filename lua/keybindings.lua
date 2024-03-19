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
-- Terraform
---------------------------------------------------------------------
vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])
vim.keymap.set("n", "<leader>ti", ":!terraform init<CR>", {})
vim.keymap.set("n", "<leader>tv", ":!terraform validate<CR>", {})
vim.keymap.set("n", "<leader>tp", ":!terraform plan<CR>", {})
vim.keymap.set("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", {})


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

vim.keymap.set(
	'n',
	'<leader>ee', 
	"oif err != nil {<CR>}<Esc>Oreturn err<Esc><CR>")

