call plug#begin('~/.config/nvim/plugs')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-clang'
    let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
    let g:deoplete#sources#clang#std = { 'c': 'c11', 'cpp': 'c++17' }
    let g:deoplete#sources#clang#sort_algo = 'priority'
Plug 'scrooloose/nerdtree'
    let NERDTreeMinimalUI = 1
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
    let g:ctrlp_custom_ignore = 'build\|build_debug\|build_release'
Plug 'Yggdroot/indentLine'
    let g:indentLine_showFirstIndentLevel = 1
    let g:indentLine_fileType = ['c', 'cpp']
Plug 'lilydjwg/colorizer'
Plug 'morhetz/gruvbox'
    let g:gruvbox_italic = 1
    let g:gruvbox_contrast_dark = 'hard'
Plug 'owickstrom/vim-colors-paramount'
Plug 'kocakosm/hilal'
call plug#end()

" Close preview window on leaving the insert mode.
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

nmap <m-[> :NERDTreeTabsToggle<cr>

set termguicolors
set background=dark
colorscheme hilal
set number
set cursorline
set colorcolumn=121

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set noswapfile
set mouse=a
set scrolloff=4
set splitright
set splitbelow

