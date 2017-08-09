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

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" Fuzzy Finder mapping
nnoremap <C-P> :FZF<CR>

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
set fo-=t " turn off the auto-newline

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

" Vim skeletons
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" Rooter
let g:rooter_silent_chdir = 1
