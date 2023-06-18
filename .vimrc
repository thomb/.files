set nocompatible

set autoindent    		" always set autoindenting on
set colorcolumn=+1
set copyindent    		" copy the previous indentation on autoindenting
set encoding=utf-8
set expandtab
set history=1000
set hlsearch			" highlight search terms
set ignorecase    		" ignore case when searching
set incsearch   	 	"  show search matches   as  you type
set mouse-=a
set mouse=""
set nobackup
set nobackup
set nowrap
set number        		" always show line numbers
set shiftround    		" use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2
set showmatch     		" set show matching parenthesis
set smartcase     		" ignore case if search pattern is all lowercase  case-sensitive otherwise
set tabstop=2
set textwidth=150
set undolevels=1000
set visualbell
set wildmenu
set wildmode=list:longest
set cursorline cursorcolumn
set laststatus=2

filetype plugin indent on
syntax on


let mapleader=","
source ~/.vim/abbreviations.vim
source ~/.vim/remaps.vim
source ~/.vim/trbjs.vim

""" Theme
syntax enable
set background=dark
colorscheme solarized
colors dogrun

highlight Normal ctermbg=0
highlight ColorColumn ctermbg=5
highlight LineNr ctermfg=5
highlight CursorLine ctermfg=11

""" airline                      
let g:airline_section_b='%4*\ %<%F%*'            "full pathk
let g:airline_detect_whitespace=1
let g:airline_theme='solarized'  
let g:airline_powerline_fonts = 1

""" COC
let g:coc_global_extensions = ['coc-tsserver']

""" ALE
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_fix_on_save = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_list_window_size = 0
let g:ale_lint_delay = 1000
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 0

let g:ale_linters = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'less': ['stylelint'],
\   'css': ['stylelint'],
\   'yaml': ['yamllint'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1

let g:ale_javascript_eslint_executable = '/usr/local/bin/eslint'

""" FZF
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

""" Load Plugins
packloadall
