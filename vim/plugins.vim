" PLUGINS
"
" use vim-plug https://github.com/junegunn/vim-plug
"
" ---Installation---
"    Download plug.vim and put it in the "autoload" directory.
"  Neovim-
"    curl -fLo ~/config/nvim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  Vim-
"    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Usage
"   Reload .vimrc and :PlugInstall to install plugins.
" Commands
"   PlugInstall [name ...] [#threads] - Install plugins
"   PlugUpdate [name ...] [#threads]  - Install or update plugins
"   PlugClean[!] - Remove unused directories (bang version will clean without prompt)
"   PlugUpgrade  - Upgrade vim-plug itself
"   PlugStatus   - Check the status of plugins
"   PlugDiff     - Examine changes from the previous update and the pending changes
"   PlugSnapshot[!] [output path] - Generate script for restoring the current snapshot of the plugins
"
" Specify a directory for plugins
" - For Neovim: ~/.config/nvim/plugged
" - For Vim: ~/.vim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin($HOME.'/.config/nvim/plugged')

" Make sure you use single quotes

" ======== vim-code-dark ========
Plug 'tomasiser/vim-code-dark'
" https://github.com/tomasiser/vim-code-dark
" A dark color scheme heavily inspired by the Dark+ scheme of Visual Studio Code.

" ======== seoul256.vim ========
Plug 'junegunn/seoul256.vim'
" A low-contrast Vim color scheme based on Seoul Colors.
" https://github.com/junegunn/seoul256.vim

" ======== vim-lastplace ========
Plug 'dietsche/vim-lastplace'
" Intelligently reopen files at your last edit position.
" https://github.com/dietsche/vim-lastplace

" ======== The NERDTree ========
Plug 'scrooloose/nerdtree'
" a file system explorer for the Vim editor.
" https://github.com/scrooloose/nerdtree

" ======== YouCompleteMe ========
Plug 'valloric/youcompleteme'
" a code-completion engine for vim
" https://github.com/Valloric/YouCompleteMe
" compile:
"      cd ~/.config/nvim/plugged/YouCompleteMe
" Compiling YCM with semantic support for C-family languages:
"   ./install.py --clang-completer
" Compiling YCM without semantic support for C-family languages:
"   ./install.py
" The following additional language support options are available:
"   C# support: install Mono and add --cs-completer when calling ./install.py.
"   Go support: install Go and add --go-completer when calling ./install.py.
"   TypeScript support: install Node.js and npm then install the TypeScript SDK with npm install -g typescript.
"   JavaScript support: install Node.js and npm and add --js-completer when calling ./install.py.
"   Rust support: install Rust and add --rust-completer when calling ./install.py.
" To simply compile with everything enabled, there's a --all flag.
" So, to install with all language features,
" ensure xbuild, go, tsserver, node, npm, rustc, and cargo tools are installed and in your PATH,
" then simply run:
"   ./install.py --all

" ======== vim-go ========
Plug 'fatih/vim-go'
" Go language support for Vim
" https://github.com/fatih/vim-go/
" You will also need to install all the necessary binaries.
" vim-go makes it easy to install all of them by providing a
" command, :GoInstallBinaries, which will go get all the required binaries.

" ======== auto-pairs ========
"Plug 'jiangmiao/auto-pairs'
" Insert or delete brackets, parens, quotes in pair.
" https://github.com/jiangmiao/auto-pairs
"
" ======== vim-fugitive ========
Plug 'tpope/vim-fugitive'
" git support
" https://github.com/tpope/vim-fugitive

" ======== vim-airline ========
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Lean & mean status/tabline for vim that's light as air.
" https://github.com/vim-airline/vim-airline
" https://github.com/vim-airline/vim-airline-themes

" ======== ctrlp.vim ========
Plug 'ctrlpvim/ctrlp.vim'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
" https://github.com/ctrlpvim/ctrlp.vim

" ======== Syntastic ========
Plug 'scrooloose/syntastic'
" a syntax checking plugin for Vim
" https://github.com/vim-syntastic/syntastic

" ======== Tagbar ========
Plug 'majutsushi/tagbar'
" a class outline viewer for vim
" https://github.com/majutsushi/tagbar

" ======== Surround.vim ========
" quoting/parenthesizing made simple
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" ======== Tabular ========
" Vim script for text filtering and alignment
" https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

" ======== vim-markdown ========
" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
" https://github.com/plasticboy/vim-markdown
Plug 'plasticboy/vim-markdown'

" ======== bufexplorer ========
" quickly and easily switch between buffers
" https://github.com/jlanzarotta/bufexplorer
Plug 'jlanzarotta/bufexplorer'

" ======== Ultisnips ========
" the ultimate solution for snippets in Vim
" https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'

" ======== vim-snippets ========
" Snippets files for various programming languages
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

" ======== goyo.vim ========
" Distraction-free writing in Vim.
Plug 'junegunn/goyo.vim'

" ======== pgsql.vim ========
" Vim PostgreSQL syntax plugin.
Plug 'lifepillar/pgsql.vim'

" ======== rapid-for-vim ========
" a collection of Vim scripts to help programing ABB industrial robots
" https://github.com/KnoP-01/rapid-for-vim
Plug 'KnoP-01/rapid-for-vim'

" ======== vimwiki ========
" A Personal Wiki For Vim
" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()


" Plugin specific options

" ======== The NERDTree ========
" NerdTree key mapping
map <C-n> :NERDTreeToggle<CR>


" ======== YouCompleteMe ========
" ensure that the autocomplete window goes away when you’re done with it,
let g:ycm_autoclose_preview_window_after_completion=1
" a shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" key mappings for selecting completion string (add Ctrl-j/k for down/up)
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<S-TAB>']
" This option controls the key mappings used to close the completion menu.
let g:ycm_key_list_stop_completion = ['<C-y>', '<Enter>']
" This option controls the key mapping used to invoke the completion menu for semantic completion.
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python'


" ======== airline ========
" Automatically display all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" show buffer number
"let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" enable/disable displaying tabs, regardless of number. (c) >
let g:airline#extensions#tabline#show_tabs = 1
" configure how numbers are displayed in tab mode.
"  let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"  let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
"  let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'


" ======== Tagbar ========
" tagbar toggle to F8
nmap <F8> :TagbarToggle<CR>


" ======== vim-go ========
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <Leader>i <Plug>(go-info)
set updatetime=100
let g:go_auto_sameids = 1


" ======== Ultisnips ========
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ======== ctrlp.vim ========
let g:ctrlp_map = '<c-p>'


" ======== goyo.vim ========
let g:goyo_width = 110
let g:goyo_height = 100


" ======== rapid-for-vim ========
let g:rapidMoveAroundKeyMap=1 " [[, ]], [] and ][ jumps around PROC/FUNC..
" let g:rapidMoveAroundKeyMap=2 " adds also textobjects af, aF and if
let g:rapidGoDefinitionKeyMap=1 " gd shows the declaration of curr. word
let g:rapidListDefKeyMap=1 " <leader>f shows all PROC/FUNC.. in curr. file
let g:rapidListUsageKeyMap=1 " <leader>u shows all appearance of curr. word
let g:rapidAutoFormKeyMap=1 " <leader>n inserts a body for a new PROC etc
let g:rapidConcealStructsKeyMap=1 " <F2>/<F3> to conceal/show struct values
let g:rapidShowError=1 " shows some syntax errors
let g:rapidRhsQuickfix=1 " open quickfix window on the right hand side
let g:qf_window_bottom=0 " if qf.vim exists and you use g:rapidRhsQuickfix
let g:rapidAutoCorrCfgLineEnd=1 " auto correct \*.cfg line terminator
" if you use colorscheme tortus use:
" let g:rapidNoHighLink=1 " even more colors


" ======== pgsql.vim ========
let g:sql_type_default = 'pgsql'
