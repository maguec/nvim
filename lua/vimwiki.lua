-- Setting up Vimwiki for Use in Neovim
--
-- vimwiki stuff

vim.cmd([[let wiki_google = {}]])
vim.cmd([[let wiki_google.path = '~/Code/Google/VimWiki']])
vim.cmd([[let wiki_google.path_html = '/Users/mague/Documents/GoogleDrive/VimWiki']])
vim.cmd([[let wiki_google.syntax = 'markdown']])
vim.cmd([[let wiki_google.ext = '.md']])
vim.cmd([[ let g:vimwiki_list = [wiki_google] ]])

-- only configure md as wiki in the vimwiki paths
vim.cmd([[let g:vimwiki_global_ext = 0]])
