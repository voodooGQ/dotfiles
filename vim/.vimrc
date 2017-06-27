" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.

set nocompatible

" Make sure undos are persistent even after exit
set nobackup
set nowritebackup
set noswapfile
if !&diff
  set undodir=~/.vim/undodir
  set undofile
endif

set linebreak
filetype plugin on
filetype plugin indent on

" Load plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Softtabs, 4 spaces
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab expandtab
autocmd FileType sass,scss,ruby,erb,yml,yaml,json setlocal shiftwidth=2 tabstop=2
set shiftround
set expandtab
set autoindent
set smartindent

" make delete key work like normal apps
set backspace=indent,eol,start

" Display extra whitespace
set list listchars=tab:»·,trail:·
" Automatically strip whitespace on save.
autocmd BufWritePre * StripWhitespace

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

" Set airline top tab and colors
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tab_type = 0

" GitGutter Config
set updatetime=750

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
set fo-=t           " turn off the auto-newline

" Numbers
set number
set numberwidth=5
set cursorline
highlight LineNr ctermfg=45
highlight CursorLineNr ctermfg=163

" put filename in statusline
set statusline+=%{fugitive#statusline()}
set laststatus=2  " always show status line

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_id_checkers = 1
let g:syntastic_aggregate_errors = 1
au BufRead,BufNewFile *.twig set filetype=htmljinja

" set default list style for Explore
let g:netrw_liststyle=4

" Make it so clipboard copy/paste works with Mac OSX
set clipboard=unnamed

" VIM Markdown Preview
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Scratch file
nn <F1> :Scratch<CR>
" Paste
nn <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
nn <F3> :so %<CR>
" Spellcheck
nn <F7> :setlocal spell! spell?<CR>
" Tagbar
nn <F8> :TagbarToggle<CR>
" Rubocop
nn <F12> :SyntasticCheck rubocop<CR>

let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Local Vim
let g:localvimrc_ask = 0

" vim-rest-console
" Allow request body on get requests
let g:vrc_allow_get_request_body = 1
let g:vrc_connect_timeout = 600

" start searching before hitting enter
set incsearch

" Make sure cursor stays centered on the screen
set scrolloff=999

" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END

let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"
