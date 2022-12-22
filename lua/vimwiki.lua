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

vim.api.nvim_exec([[
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
]], false)

vim.cmd([[autocmd FileType vimwiki map <leader>c :call ToggleCalendar()<CR>]])
vim.cmd([[autocmd FileType vimwiki map <leader>s :VimwikiSearch /]])
vim.cmd([[autocmd FileType vimwiki map <leader>dg :VimwikiDiaryGenerateLinks<CR>]])
vim.cmd([[autocmd FileType vimwiki map <leader>di :VimwikiDiaryIndex<CR>]])
