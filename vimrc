" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2006 Aug 12
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" In an xterm the mouse should work quite well, thus enable it.
set mouse=a

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis
""""""""""
set number
set autochdir
""always display the status line
set laststatus=2 
let mapleader = ","

nmap ,q <ESC>:q<CR>
nmap ,w <ESC>:w<CR>
nmap wq <ESC>:x<CR>
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab

nmap <C-L> <C-W>l
nmap <C-K> <C-W>k
nmap <C-J> <C-W>j
nmap <C-H> <C-W>h

imap <A-l> <Right>
imap <A-k> <Up>
imap <A-j> <Down>
imap <A-h> <Left>
"""" move the cursor as terminal 
imap <C-A> <HOME>
imap <C-E> <END>
imap <C-B> <LEFT>
imap <C-F> <RIGHT>
imap <C-D> <DEL>
imap <C-Z> <ESC>ui
imap <C-H> <Left>
imap <C-J> <Down>
imap <C-L> <Right>
imap <C-K> <Up>

""" taglist ''''''
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
nmap wm <ESC>:TlistToggle<CR>
"let Tlist_Auto_Open = 1 
"""""" for screen to use mouse 
set ttymouse=xterm2

"""""""""""""""buffer operation"
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1
nmap <C-N> <ESC>:bn<CR>
nmap <C-P> <ESC>:bp<CR>
"nmap <ESC>:q<CR> <ESC>:bd<CR>
"""""" winmanager
let g:taglist_title = "Taglist"
"let g:winManagerWindowLayout='Taglist|FileExplorer'
let Tlist_File_Fold_Auto_Close=1
""let g:winManagerWindowLayout='FileExplorer,Taglist|BufExplorer'
let g:winManagerWindowLayout='TagList|BufExplorer|FileExplorer'
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)
set statusline=\ %<%F[%1*%M%*%n%H]%=\ %y\ %0(%{&fileformat}\ \ %c,%l/%L%)
"set statusline=\ %<%F%=\ %y\ %0(%{&fileformat}\ \ %c:%l/%L%)
"
