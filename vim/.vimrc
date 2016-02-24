" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.

set nocompatible
set nobackup
set nowritebackup
set noswapfile
set linebreak

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
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
colo base16-default
set background=dark

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
set statusline+=%f
set laststatus=2   " always show status line

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdtree
" let NERDTreeShowHidden=1
" map <C-n> :NERDTreeToggle<CR>

" set default list style for Explore
let g:netrw_liststyle=3
" open up Explore
map <C-n> :Sexplore<cr>
