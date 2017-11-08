" BASE_SETTINGS

" Map leader to space
let mapleader = " "

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible
" Don't wrap lines
set linebreak
" Make delete key work like normal apps
set backspace=indent,eol,start
" Display extra whitespace
set list listchars=tab:»·,trail:·
" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
" Turn off the auto-newline
set fo-=t
" GitGutter Config
set updatetime=750
" Make it so clipboard copy/paste works with Mac OSX
set clipboard=unnamed
" start searching before hitting enter
set incsearch
" Make sure cursor stays centered on the screen
set scrolloff=999
" Put filename in statusline
set statusline+=%{fugitive#statusline()}
set laststatus=2  " always show status line
" Paste Toggle
set pastetoggle=<F2>
set showmode
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Proper splits
set splitbelow
set splitright
" Wildmenu
set wildmenu
set wildmode=longest:full

" Automatically strip whitespace on save.
autocmd BufWritePre * StripWhitespace

"===============================================================================

" REMAPS
" Scratch file
nn <F1> :Scratch<CR>
" Paste
nn <F2> :set invpaste paste?<CR>
" Copy filename to clipboard (with path)
nn <F4><silent> :let @+=expand("%:p")<CR>
" Spellcheck
nn <F7> :setlocal spell! spell?<CR>
" Tagbar
nn <F8> :TagbarToggle<CR>
" Rubocop
nn <F12> :SyntasticCheck rubocop<CR>
" When you open a readonly file, allows us to save it (NOT WORKING, FIX!!)
"nn <C-s>:w !sudo tee %<CR>
" Faster window movement
nn <C-j> <C-w>j
nn <C-k> <C-w>k
nn <C-h> <C-w>h
nn <C-l> <C-w>l
" Hard mode
nn <Left> :echoe "Use h"<CR>
nn <Right> :echoe "Use l"<CR>
nn <Up> :echoe "Use k"<CR>
nn <Down> :echoe "Use j"<CR>

"===============================================================================

" LEADER_MAPS
" Toggle ALE Linting
map <Leader>a :ALEToggle<CR>

" Align = and : items with tabularize
if exists(":Tabularize")
    nmap <Leader>t= :Tabularize /=\zs<CR>
    vmap <Leader>t= :Tabularize /=\zs<CR>
    nmap <Leader>t: :Tabularize /:\zs<CR>
    vmap <Leader>t: :Tabularize /:\zs<CR>
endif

" Add a frozen_string_literal line (for Ruby)
nmap <Leader>f= i# frozen_string_literal: true<esc>o<esc>x

" Faster tab movement
nmap <silent> <Leader>h :tabprev<CR>
nmap <silent> <Leader>l :tabnext<CR>
nmap <silent> <Leader>c :tabnew<CR>
nmap <silent> <Leader>x :tabclose<CR>

nmap <Leader>u :GundoToggle
"===============================================================================

" LOAD_VIM_PLUGINS
filetype plugin on
filetype plugin indent on
" Load plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
"===============================================================================

" SYNTAX_COLORS
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif
" Color overrides
"let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
syntax enable
colorscheme gruvbox
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" twig highlighting
au BufRead,BufNewFile *.twig set filetype=htmljinja

" Change directory color
hi! link Directory GruvboxPurple
"===============================================================================

" SAVE_PERSISTENT_UNDOS
" Make sure undos are persistent even after exit
set nobackup
set nowritebackup
set noswapfile
if !&diff
  set undodir=~/.vim/undodir
  set undofile
endif
"===============================================================================

" CODE_INDENTATION
" Softtabs, 4 spaces by defaults
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab expandtab
" Switch to a 2 space tab on these files
autocmd FileType sass,scss,ruby,erb,yml,yaml,json setlocal shiftwidth=2 tabstop=2
set shiftround
set expandtab
set autoindent
set smartindent
"===============================================================================

" AIRLINE
" Set airline top tab and colors
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamemod = ':t'
"===============================================================================

"FZF_AND_RIPGREP (Fuzzy finding)
" C-P calls FZF on all files
nnoremap <C-P> :Files<CR>

" bind C-k to grep word under cursor
nnoremap <C-k> :Find <C-R><C-W><CR>
" bind Shift-k to find word under cursor while respecting gitignore
nnoremap K :Findi <C-R><C-W><CR>

" -g '!tags': always ignore the tags file
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg -g "!tags" --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" Same as above, just respect gitignore
command! -bang -nargs=* Findi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
"===============================================================================

" EXPLORER
" set default list style for Explore
let g:netrw_liststyle=4
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
"===============================================================================

" VIM_MARKDOWN_PREVIEW
let vim_markdown_preview_github=1 " Use Github Flavored
let vim_markdown_preview_hotkey='<C-m>' " Hotkey to open preview (also Enter)
"===============================================================================

" LOCAL_VIM
let g:localvimrc_ask = 0
"===============================================================================

" VIM_REST_CONSOLE
" Allow request body on get requests
let g:vrc_allow_get_request_body = 1
let g:vrc_connect_timeout = 600

"===============================================================================

" VIM SKELETONS
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"

"===============================================================================
" NEOCOMPLETE + OMNICOMPLETION

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
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
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
"===============================================================================

" ROOTER
let g:rooter_silent_chdir = 1
"===============================================================================

" LINE_NUMBERS
set number
set numberwidth=5
set cursorline

function! NumberToggle()
  :exec &nu==1 ? "se rnu!" : "se rnu"
endfunction

function! NumberOffToggle()
    :exec &nu==1 ? "se nu!" : "se nu"
endfunction

 "C-n swap relative number
nnoremap <silent> <Leader>n :call NumberToggle()<CR>
nnoremap <silent> <Leader>N :call NumberOffToggle()<CR>
"===============================================================================

" CODE_FOLDEING
nn <silent> <C-]> za

set foldmethod=syntax
set foldlevelstart=20

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"===============================================================================

" QUICK_MINIMAL

" Function to quickly turn on a set of minimal settings for really big files.
" Keep lag low
function! QuickMinimal()
    set number!
    set cursorline!
    :exec ":ALEDisable"
    :exec ":GitGutterDisable"
endfunction

function! ReverseQuickMinimal()
    set number
    set cursorline
    :exec ":ALEEnable"
    :exec ":GitGutterEnable"
endfunction

"===============================================================================

" ALE
autocmd BufEnter *.erb ALEDisable " Disable on .erb files
let g:ale_sign_error = "☠'"
let g:ale_sign_warning = "⚡"
hi link ALEError        ErrorMsg
hi link ALEWarning      Search
hi link ALEErrorSign    CursorColumn
hi link ALEWarningSign  CursorColumn

"===============================================================================

