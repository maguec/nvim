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
vim.keymap.set("n", "<leader>ti", ":!terraform init<CR>", opts)
vim.keymap.set("n", "<leader>tv", ":!terraform validate<CR>", opts)
vim.keymap.set("n", "<leader>tp", ":!terraform plan<CR>", opts)
vim.keymap.set("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", opts)

---------------------------------------------------------------------
--- Toggle the left side
---------------------------------------------------------------------
local myfunctions = require "myfunctions"
vim.keymap.set('n', '<leader>tt', myfunctions.togglenums, {})

