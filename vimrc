" Powerline addon
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

" Addons
" auto-pairs
"   https://github.com/jiangmiao/auto-pairs
" endwise
"   https://github.com/tpope/vim-endwise
" ragtag
"   https://github.com/tpope/vim-ragtag


" Colors
" https://github.com/tomasr/molokai
colorscheme molokai 
" to have original monokai background
let g:molokai_original = 1
" try to utilize 256 colors
let g:rehash256 = 1

" Syntax
syntax enable 		" enable syntax processing

" Space & Tabs
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

" UI Config
set number		" show line numbers
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
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
