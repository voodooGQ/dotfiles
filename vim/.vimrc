" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.

set nocompatible
set nobackup
set nowritebackup
set noswapfile
set linebreak
":filetype on
filetype plugin on
filetype plugin indent on

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Softtabs, 4 spaces
" set tabstop=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" set shiftwidth=4
autocmd FileType sass,scss,ruby,erb setlocal shiftwidth=2 tabstop=2
set shiftround
set expandtab

set smartindent

" make delete key work like normal apps
set backspace=indent,eol,start

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Color overrides
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
syntax enable
colorscheme monokai
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" GitGutter Config
set updatetime=750

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
set fo-=t           " turn off the auto-newline

" Numbers
set number
set numberwidth=5

set cursorline " highlight current line

" put filename in statusline
set statusline+=%{fugitive#statusline()}
set laststatus=2   " always show status line

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
au BufRead,BufNewFile *.twig set filetype=htmljinja

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" set default list style for Explore
let g:netrw_liststyle=3

set clipboard=unnamed
nn <F8> :TagbarToggle<CR>
nn <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
nn <F7> :setlocal spell! spell?<CR>

