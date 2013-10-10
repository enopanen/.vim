call pathogen#infect()

syntax on                           " Syntax highlighting
filetype plugin indent on           " Enable filetype-specific plugins

set title
set laststatus=2                    " Always show the statusline
set encoding=utf-8                  " unicode!

"new **********************


"disables swap and backup files
set noswapfile
set nobackup

"setting these in this order does special, watch when you reload and switch modes
"must be version 7.4 or > for ^ to work.
set relativenumber                "relative number line.. a bit annoying
set number

"shows contents of all registers
nnoremap <F4> :registers<CR>

"yanks to the end of the line
nnoremap Y y$

set linebreak 
set showmode


"end new *****************



set history=500
set undolevels=500

set background=dark
set number
"set relativenumber                "relative number line.. a bit annoying
set hidden                        "hide buffers when not displayed
set showmatch
set showcmd
set hlsearch
set ignorecase
set smartcase                       "this overwrites the ignore case if search patter contains upper

set mouse=v                         "use mouse in visual mode, not others.

set scrolloff=5
set sidescrolloff=10                " Number of cols from horizontal edge to start scrolling
set sidescroll=2                    " Number of cols to scroll at a time
set softtabstop=4
set shiftwidth=4
set expandtab                       "turns tabs into spaces
set smarttab
set bs=indent,eol,start             "allow backspacing over everything in insert mode
set autoindent
set copyindent
set smartindent
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'

set <F8> :Explore<CR>

set splitright splitbelow
set columns=320

"Highlight cursorline ONLY in the active window:
au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

"custom invisibles 
"set list
"set listchars=trail:~,eol:^

set ruler
set cursorline 
set cuc 
hi CursorColumn ctermfg=white ctermbg=NONE cterm=NONE
highlight StatusLine ctermfg=black ctermbg=gray cterm=NONE
highlight StatusLineNC ctermfg=black ctermbg=yellow cterm=NONE


" allow freeform selection (i.e. ignoring line endings) in visual block mode
set virtualedit+=block

" Switch on folding between all braces
set foldenable                            " enable folding
"set foldcolumn=2                         " add a fold column
set foldmethod=manual                     " detect triple-{ style fold markers
set foldlevelstart=1                      " start out with everything folded
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

"these have been messing up???
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

"skip wrapped lines while moving in command mode
nnoremap j gj
nnoremap k gk

"map <Esc><Esc> :w!<CR>

"enter search matches when jumping
map N Nzz
map n nzz

" Tab indenting
nnoremap <Tab> >>
nnoremap <S-Tab> <<



" select all
map <Leader>a ggVG

map Q @@                               "Map Q to repeat the last recorded macro 



"keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" absolute line numbers in insert mode, relative otherwise for easy movement
"au InsertEnter * :set rnu
"au InsertLeave * :set nu

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"jump to start and end of line using home keys
noremap H ^
noremap L $

"change leader key
let mapleader = ","


"set shortmess=atI                   "ignores "Press ENTER or type command to continue" and others
set shortmess+=I                   "ignores "Press ENTER or type command to continue" and others

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set wrap
set textwidth=115
set formatoptions=qrn1
set colorcolumn=120
set undofile                        "allows you to undo after reopening


"enter search matches when jumping
map N Nzz
map n nzz

nnoremap ' :
nnoremap ; <Esc>

map K <Esc>:buffers<CR>:buffer<Space>

imap kj <Esc>
imap jk <Esc>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Map F2 to comment the selected lines in visual mode (// style)
vmap <F2> :s/^/\/\/\ /g <CR> :noh <CR>
" Map F3 to uncomment the selected lines in visual mode
vmap <F3> :s/^\/\/\ //g <CR> :noh <CR>


"use arrow key to switch buffers
:noremap <left> :bp<CR>
:noremap <right> :bn<CR>



"ever notice a slight lag after typing the leader key + command? This lowers the timeout.
set timeoutlen=250







