" Vim & neovim configuration
" Inspiration and bits and pieces copied from various sources.

if filereadable($HOME.'/.config/nvim/plugins.vim')
    source ~/.config/nvim/plugins.vim
endif

""""""""""""""""""""
"" COMMON OPTIONS
""""""""""""""""""""

set rtp^=/usr/share/vim/vimfiles/ " use plugins, syntax definitions, or other addons that are installed for vim


" Settings based on :help nvim-defaults, for vim
set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set display=lastline
set encoding=utf-8
set formatoptions=tcqj
set history=10000             " Store a ton of history (default is 20)
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set mouse=a                  " Automatically enable mouse usage
set nrformats=hex
set sessionoptions-=options
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set viminfo+=!

set nocompatible             " not required by neovim
filetype plugin indent on    " Automatically detect file types.
syntax on                    " Syntax highlighting
set mousehide                " Hide the mouse cursor while typing
scriptencoding utf-8
"set virtualedit=onemore      " Allow for cursor beyond last character
"set spell                   " Spell checking on
set hidden                   " Allow buffer switching without saving
set iskeyword-=.             " '.' is an end of word designator
set iskeyword-=#             " '#' is an end of word designator
set iskeyword-=-             " '-' is an end of word designator

"set noswapfile      " Don't use swapfile
"set nobackup        " Don't create annoying backup files
"set nowritebackup

" Enable folding
set foldenable
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode
set cursorline                  " Highlight current line

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
"highlight clear CursorLineNr   " Remove highlight color from current line number

set ruler                       " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd                     " Show partial commands in status line and
                                  " Selected characters/lines in visual mode
set laststatus=2                " always show statusline

" Broken down into easily includeable segments
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

set backspace=indent,eol,start           " Backspace for dummies
set linespace=0                          " No extra spaces between rows
set number                               " Line numbers on
set showmatch                            " Show matching brackets/parenthesis

" Search
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
set incsearch                            " Find as you type search
set hlsearch                             " Highlight search terms
set ignorecase                           " Case insensitive search
set smartcase                            " Case sensitive when uc present

set winminheight=0                       " Windows can be 0 line high
set wildmenu                             " Show list instead of just completing
set wildmode=list:longest,full           " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]            " Backspace and cursor keys wrap too
"set scrolljump=3                         " Lines to scroll when cursor leaves screen
set scrolloff=3                          " Minimum lines to keep above and below cursor
set list                                 " show whitespase defined in listchars
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" Formatting
set nowrap                               " Do not wrap long lines
set autoindent                           " Indent at the same level of the previous line
set shiftwidth=4                         " Use indents of 4 spaces
set expandtab                            " Tabs are spaces, not tabs
set tabstop=4                            " An indentation every four columns
set softtabstop=4                        " Let backspace delete indent
set nojoinspaces                         " Prevents inserting two spaces after punctuation on a join (J)
set splitright                           " Puts new vsplit windows to the right of the current
set splitbelow                           " Puts new split windows to the bottom of the current
"set matchpairs+=<:>                      " Match, to be used with %
set pastetoggle=<F12>                    " pastetoggle (sane indentation on pastes)

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

""""""""""""""""""""
"" KEYBOARD MAPPINGS
""""""""""""""""""""

imap jj <Esc>

" Buffer prev/next
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>

let mapleader = ','                      " The default leader is '\', but many people prefer ',' as it's in a standard location.
let maplocalleader= ','

" Easier moving in tabs and windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Yank to X11 clipboard with xclip program
vnoremap <C-c> :w !xclip -sel c<CR>:echo "Selection copied to the clipboard."<CR><CR>

" colorschemes

colorscheme codedark

" seoul256 (dark). Works on 256-color terminal or on GVim.
"   background:
"   range:   233 (darkest) ~ 239 (lightest)
"   default: 237
"let g:seoul256_background = 234
"colorscheme seoul256


""""""""""""""""""""
" File Type settings
""""""""""""""""""""
au BufNewFile,BufRead *.md setlocal spell noet ts=2 sw=2
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufRead /tmp/psql.edit.* set syntax=sql
