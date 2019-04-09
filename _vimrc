"" Use Vim settings, rather than Vi settings.
set nocompatible

execute pathogen#infect()

"" Disable backup and swap files.
set nowritebackup
set noswapfile
set nobackup

"" Set the character encoding to UTF-8.
set encoding=utf-8

"" Unix line endings by default.
set fileformat=unix
set fileformats=unix,dos

"" Enable syntax highlighting.
syntax on

"" Enable filetype detection and plugins.
filetype plugin indent on

"" Allow switching between unsaved buffers.
set hidden

"" Don't redraw while executing macros.
set lazyredraw

"" Enhanced command-line completion.
set wildmenu

"" Enable folding.
set foldenable
set foldmethod=marker

"" Turn off wrapping.
set nowrap

"" Display line numbers.
set number

"" Show relative line number in front of each line.
set relativenumber

"" Show cursor position below each window.
set ruler

"" Always show the status line.
set laststatus=2

"" Display the current mode in the status line.
set showmode

"" Show (partial) command keys in the status line.
set showcmd

"" Highlight all matches for the last used search pattern.
set hlsearch

"" Show match for partly typed search command.
set incsearch

"" Ignore case when using a search pattern.
set ignorecase

"" Override 'ignorecase' when pattern has upper case characters.
set smartcase

"" Use four spaces for indentation.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"" Automatically set the indent of a new line.
set autoindent
set smartindent

"" Fix backspace.
set backspace=indent,eol,start

"" Enable mouse support.
set mouse=a

"" Disable beeping and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"" Splits.
set splitbelow
set splitright

"" Disable middle-click pasting.
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

"" Use the system clipboard by default.
set clipboard=unnamed

"" Change current directory to the file being edited.
autocmd BufEnter * silent! lcd %:p:h

"" Leader.
let mapleader = ","

"" Visually select the text that was last edited/pasted (Vimcasts #26).
noremap gV `[v`]

"" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Delete without yanking.
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Replace currently selected text with default register without yanking it.
vnoremap <leader>p "_dP

map <S-Enter> O<ESC>
map <Enter> o<ESC>

" Display tabs and trailing spaces visually.
set list listchars=tab:\ \ ,trail:·

" Use <BS> to switch between alternate files.
nnoremap <BS> <C-^>

set background=dark
colorscheme solarized

if has('gui_running')
    set guifont=consolas:h10
    set guioptions-=T        " remove toolbar
    set guioptions+=b        " show horizontal scrollbar
    set gtl=%t gtt=%F        " tab headings
    set anti                 " antialias font
end

" Plugins --------------------------------------------------------------------

"" delimitMate
autocmd Filetype php,javascript,css,scss,less let delimitMate_expand_cr = 1

"" Emmet
let g:user_emmet_leader_key = '<C-E>'

"" CtrlP
set wildignore+=*/vendor/*,*.so,*.swp,*.zip    " Unix
set wildignore+=*\\vendor\\*,*.swp,*.zip,*.exe " Windows

let g:ctrlp_root_markers = ['.root']

map <leader>b :CtrlPBuffer<CR>
