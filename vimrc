" Addons
" auto-pairs
"   https://github.com/jiangmiao/auto-pairs
" endwise
"   https://github.com/tpope/vim-endwise
" ragtag
"   https://github.com/tpope/vim-ragtag


" Colors

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''

" Dracula Theme
" colorscheme dracula

" Syntax
syntax enable 		    " enable syntax processing

" Space & Tabs
set tabstop=4		    " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

" UI Config
set number relativenumber	" show line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> z
set foldmethod=indent   " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
