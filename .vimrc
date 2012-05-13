 
filetype plugin indent on           " Enable filetype-specific plugins


syntax on                           " Syntax highlighting

set laststatus=2                    " Always show the statusline
set encoding=utf-8                  " unicode!



set history=500
set undolevels=500
set visualbell



set background=dark
set relativenumber
"set hidden                        "hide buffers when not displayed
set showmatch
set showcmd
set hlsearch
set ignorecase
set smartcase                       "this overwrites the ignore case if search patter contains upper

set backspace=2

set scrolloff=7
set softtabstop=4
set shiftwidth=4
set expandtab                       "turns tabs into spaces
set smarttab
set bs=indent,eol,start             "allow backspacing over everything in insert mode
set autoindent
set copyindent
set smartindent
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'

set splitright
set columns=320
set splitbelow


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
set foldcolumn=2                          " add a fold column
set foldmethod=marker                     " detect triple-{ style fold markers
set foldmarker={,}
set foldminlines=2
set foldlevelstart=0                      " start out with everything folded
set foldlevel=99
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo


set virtualedit+=block                    " allow freeform selection in visual block mode


"skip wrapped lines while moving in command mode
nnoremap j gj
nnoremap k gk

map <Esc><Esc> :w!<CR>

"enter search matches when jumping
map N Nzz
map n nzz

" Tab indenting
nnoremap <Tab> >>
nnoremap <S-Tab> <<

nnoremap j gj
nnoremap k gk

inoremap # X<BS>#                         "no more hash key

set splitright
set columns=320
set splitbelow


map <Esc><Esc> :wq<CR>


"enter search matches when jumping
map N Nzz
map n nzz



"i think this is for command mode
nnoremap ' :
nnoremap ; <Esc>


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


