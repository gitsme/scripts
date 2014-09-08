set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2

set cmdheight=2
set cursorline
set history=10000
set ignorecase smartcase
set nocompatible
set showmatch
set showtabline=2

"" Store temporary files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set scrolloff=3
syntax on
""""""""""""""""""
"" COLOR
""""""""""""""""""
:set t_Co=256
:set background=dark

""""""""""""""""""
"" STATUS LINE
""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""
" InsertTime COMMAND
" Insert the current time
""""""""""""""""""
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>
