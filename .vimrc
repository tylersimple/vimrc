let mapleader = ","

execute pathogen#infect()

set viminfo=!,'100,<500,s10,h
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=120
set hlsearch
set ignorecase

" Ctrl+r: replace visually selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" #/*, n/N: search for visually selected text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" fugitive
map <Leader>gd :Gdiff<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gr :Gread<CR>
map <Leader>gl :Glog<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Syntastic
map <C-s> :SyntasticCheck<CR>
let g:syntastic_quiet_messages = { "type": "style" }
" recommended starter config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CtrlP
map <C-p> :CtrlP<CR>
