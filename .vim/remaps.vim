nnoremap / /\v
vnoremap / /\v
noremap <leader>enc ysiw
noremap <leader>i :set list!<CR>
noremap <leader>N :setlocal number!<CR>
noremap <c-_> <c-w>_
noremap <C-H> <C-W>h 
noremap <c-j> <c-w>j<c-_>
noremap <c-k> <c-w>k<c-_>
noremap <C-L> <C-W>l
noremap <C-P> :CtrlPMRUFiles
noremap :W :w
noremap :Q :q
nnoremap <leader>kl :.w !pbcopy<CR><CR>
vnoremap <leader>kl :w !pbcopy<CR><CR>
nnoremap <leader>pl :set paste<cr>:r !pbpaste<CR>:set nopaste<CR>
noremap <leader>s <esc>:w<CR>
inoremap <leader>cl console.log();<esc>hi
nnoremap <leader>cl oconsole.log();<esc>hi
inoremap <leader>p <esc>pA
noremap <leader><space> :noh<CR>
nnoremap <C-n> :new<CR>
nnoremap <C-f> :FZF<CR>

