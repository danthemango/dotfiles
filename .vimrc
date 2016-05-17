"if you're unsure, every setting is avalable in the help menu
"just type :help (setting) to check what every setting does
set mouse=a "mouse controls
set shiftwidth=3 "number of spaces per tab
set tabstop=3 
set expandtab "spaces instead of tabs
set smarttab 
set ai "automatically indent line when pushing enter
set si "smart indent
"set lbr "automatic line break
"set tw=94
set wrap "wrap lines
set novisualbell "turns flickering off (at end of line)
syntax enable "syntax highlighting for C++, C, python and more
colorscheme desert
set background=dark
"allows deleting of up to 'shiftwidth' number of spaces at a time
set showmatch "shows matching bracket when highlighting ()
set smartcase "does not care about case when searching
set incsearch "While typing a search command, show where the pattern, as it was typed so far, matches
set number "numbers at the left
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
:silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
"if isdirectory($HOME . '/.vim/swap') == 0
":silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
"endif
"set directory=./.vim-swap//
"set directory+=~/.vim/swap//
"set directory+=~/tmp//
"set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
" undofile - This allows you to use undos after exiting and restarting
" This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
" :help undo-persistence
" This is only present in 7.3+
if isdirectory($HOME . '/.vim/undo') == 0
:silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
endif
set undodir=./.vim-undo//
set undodir+=~/.vim/undo//
set undofile
endif
set undolevels=10000 "number of undos possible
"inoremap ( ()<left>
"inoremap { {<Return><Return>}<up><left><tab> " automatically close brackets
"set linebreak
set so=7 "extra lines with using j/k
set ruler " line and column information of curser. Found in bottom-right of window
set noerrorbells " don't make noise
"creates a color line on the right
set colorcolumn=97
hi ColorColumn ctermbg=4

nmap <F3> :cp<ENTER>
nmap <F4> :cn<ENTER>
nmap <F5> :make<ENTER>
