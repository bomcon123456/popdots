set number
set ruler
syntax enable           " enable syntax processin
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

au BufEnter * :hi EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
au BufEnter * :Minimap
au BufEnter * :hi VertSplit ctermbg=bg ctermfg=bg

let g:minimap_highlight='Visual'

call plug#begin('~/.config/nvim/plugs')
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal
