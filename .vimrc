if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

" Settings for Pathogen
filetype off                          " disable filetype use. Enabled later
call pathogen#infect()

set nocompatible                      " don't try to be strictly vi-like
set modelines=0                       " don't use modelines (for security)
set viminfo='20,\"50                  " use a viminfo file,...
set history=50                        " limit history
set ruler                             " show the cursor position
set title                             " show title
set incsearch                         " find as entering pattern
set t_Co=256                          " uses 256 colors
set ignorecase                        " case insensitive patterns,...
set smartcase                         " when only lowercase is used
set pastetoggle=<F2>                  " F2 toggles indenting when pasting
set wildmenu                          " use command-line completion menu,...
set wildmode=longest:full             " with wildmode
set bs=indent,eol,start               " allow backspacing over everything
set autoindent                        " enable auto-indentation
set tabstop=2                         " no. of spaces for tab in file
set shiftwidth=2                      " no. of spaces for step in autoindent
set softtabstop=2                     " no. of spaces for tab when editing
set expandtab                         " expand tabs into spaces
set smarttab                          " smart tabulation and backspace
set mouse=a                           " enable mouse in all modes
set list                              " show non-print characters,...
set listchars=trail:⋅,nbsp:⋅,tab:▷⋅   " for tabs and trailing spaces
set number                            " show line numbers
set cursorline                        " highlight the line with the cursor

set guioptions-=T                     " no toolbar in gvim
set guioptions-=m                     " no menubar in gvim
set guioptions-=r                     " no right scrollbar in gvim
set guioptions-=L                     " no left scrollbar when v.split in gvim
set guifont=DejaVu\ Sans\ Mono\ 10    " set font in gvim

filetype plugin indent on             " enable filetype use

setlocal ofu=syntaxcomplete#Complete  " enable syntax based omni completion
setlocal foldmethod=syntax            " folding uses syntax for folding
setlocal nofoldenable                 " don't start with folded lines

" Set the leader key
let mapleader = ","

" Map F1 key to Esc.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Map <leader>y, x and p as shortcuts for copy, cut and paste (respectively)
" to/from system (X) clipboard when supported (Eg: gvim).
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>x "+x
vnoremap <leader>x "+x
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Set the keys to toggle spell checking
map <F4> :setlocal spell! spelllang=en_us<CR>

" Remove highlighting search results
nnoremap <leader><space> :noh <CR>

" Map w!! to write file with sudo, when forgot to open with sudo.
cmap w!! w !sudo tee % >/dev/null

" Only do this part if compiled with support for autocommands
if has("autocmd")
  augroup linux
    autocmd!
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
    " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
    autocmd BufNewFile,BufReadPre /media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp

    " Switch to working directory of the open file
    autocmd BufEnter * lcd %:p:h

    " Custom filetypes settings: Python, Shell, Go, JSON, Vagrant
    au FileType python,sh set tabstop=4 shiftwidth=4 softtabstop=4
    au FileType go set noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
    au BufRead,BufNewFile *.json setfiletype javascript
    au BufRead,BufNewFile Vagrantfile setfiletype ruby
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Explicitly tell vim is CSApprox capable. Uncommenting would make
" sure CSApprox is used, provided other dependencies are fulfilled
"let g:csa_Capable = 1

" Switch syntax highlighting on, when the terminal has colors
" Use CSApprox or guicolorscheme plugins based on gui support
" Also switch on highlighting the last used search pattern
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  if &t_Co == 256 || &t_Co == 88
    if has('gui') || exists("g:csa_Capable")
      let s:use_CSApprox = 1
    else
      let g:CSApprox_loaded = 1
      let s:use_guicolorscheme = 1
    endif
  endif
endif

" No blinking cursor. See http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"

" View changes after the last save
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

nnoremap <leader>? :DiffSaved<cr>

" Plugin: Auto Pairs - key to toggle auto-complete
let g:AutoPairsShortcutToggle = '<F3>'

" Plugin: BufExplorer - easier invoke keys
nnoremap <leader>bb :BufExplorer<cr>

" Plugin: NERDTree - keys to toggle NERDTree
nnoremap <leader>d :NERDTreeToggle<cr>
" Plugin: NERDTree - use colors, cursorline and return/enter key
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" Plugin: Scratch - define invoke function
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction
" Plugin: Scratch - keys to toggle Scratch buffer
map <leader>s :call ToggleScratch()<CR>

" Plugin: Rails - turn off rails related things in statusbar
let g:rails_statusline=0

" Plugin: Snipmate - configuration
source ~/.vim/snippets/support_functions.vim
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "eruby")
autocmd vimenter * call ExtractSnips("~/.vim/snippets/html", "php")

" Plugin: LaTeX - configuration (plugin not bundled in gavim
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Plugin: Pandoc - no folding by default
let g:pandoc_no_folding = 1

" Plugin: Vala - vala support
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala
let vala_comment_strings = 1
let vala_space_errors = 1
let vala_no_tab_space_error = 1

" Plugin: Ack - uncomment suitable line if configuration is necessary
"let g:ackprg="ack -H --nocolor --nogroup"         " if ack --version < 1.92
"let g:ackprg="ack-grep -H --nocolor --nogroup"    " for Debian/Ubuntu

" Plugin: keys to launch conque - terminal
nnoremap <leader>t :ConqueTermSplit bash<cr>

" Set color scheme and shortcut keys
if exists('s:use_CSApprox')
  colorscheme monokai
  map <F5> <Esc>:colorscheme railscasts-nm<CR>
  map <F6> <Esc>:colorscheme monokai<CR>
  map <F7> <Esc>:colorscheme Tomorrow<CR>
elseif exists('s:use_guicolorscheme')
  colorscheme Tomorrow-Night
  map <F5> <Esc>:colorscheme dc2<CR>
  map <F6> <Esc>:colorscheme Tomorrow-Night<CR>
  map <F7> <Esc>:colorscheme Tomorrow<CR>
  runtime! bundle/plugin-guicolorscheme-1.2/guicolorscheme.vim
else
  colorscheme default
endif
