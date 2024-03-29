" LOAD_VIM_PLUGINS

filetype plugin on
filetype plugin indent on

" Load plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
"===============================================================================

" BASE_SETTINGS

au BufWritePost * :silent! :syntax sync fromstart<cr>:redraw!<cr>

" Map leader to space
let mapleader = " "

" Don't wrap lines
set linebreak
" Display extra whitespace
set list listchars=tab:»·,trail:·
" Make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1
" Turn off the auto-newline
set fo-=t
" GitGutter Config
set updatetime=300
" Make it so clipboard copy/paste works with Mac OSX
set clipboard=unnamedplus
" ignorecase when searching
set ignorecase " @n
" If any capitals are used search by case
set smartcase " @n
" Infer the case
set infercase " @n
" Make sure cursor stays centered on the screen
set scrolloff=999
" Put filename in statusline
set statusline+=%{fugitive#statusline()}
set statusline+=%{LinterStatus()}
" Paste Toggle
set pastetoggle=<F2>
set showmode
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Proper splits
set splitbelow
set splitright
" Wildmenu
set wildmode=longest:full

set backupcopy=yes

" Go up the tree until we find a tags file"{{{
"set tags=./tags;/
" Sane level for syntax highlight"}}}
set synmaxcol=300 "@n
" Lazy Redraw
set lazyredraw "@n
" Automatically read the file if it changed outside vim @n
set modeline
set modelines=1
" Flash matching braces for 200ms @n
set showmatch
set matchtime=2
" When joining lines, delete comment characters if appropriate"{{{
"set formatoptions+=j"}}}
set nojoinspaces

set shell=/usr/local/bin/zsh

if !has('nvim')
    set nocompatible
    set backspace=indent,eol,start
    set incsearch
    set laststatus=2  " always show status line
    set wildmenu
    set smarttab
end

" Automatically strip whitespace on save.
autocmd BufWritePre * StripWhitespace

" Resize splits when vim itself is resized @n
augroup ResizeSplits
    au!
    au VimResized * :wincmd =
augroup END

" Only display the cursorline on windows that are in focus
augroup highlight_follows_focus
    autocmd!
    au WinEnter * set cursorline
    au WinLeave * set nocursorline
    au FocusGained * set cursorline
    au FocusLost * set nocursorline
augroup END

" Don't open gutentags with gitcommits or rebases https://github.com/ludovicchabant/vim-gutentags/issues/168
au FileType gitcommit,gitrebase let g:gutentags_enabled=0

let g:gutentags_project_root = ['.root']
"===============================================================================

" REMAPS"{{{
" Scratch file"}}}
nn <F1> :Scratch<CR>
" Paste
nn <F2> :set invpaste paste?<CR>
" Copy filename to clipboard (with path)
nn <F4><silent> :let @+=expand("%:p")<CR>
" Spellcheck
nn <F7> :setlocal spell! spell?<CR>
" Tagbar
nn <F8> :TagbarToggle<CR>

map <leader>b :Buffers<CR>
map f <Plug>Sneak_s

"These are to cancel the default behavior of d, D, c, C"{{{
"  to put the text they delete in the default register.
"  Note that this means e.g. "ad won't copy the text into
"  register a anymore.  You have to explicitly yank it."}}}
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

" Remap H and L to start and end of the line
nnoremap H ^
nnoremap L $
xnoremap H ^
xnoremap L $

" Shift-X repeats the x macro
nnoremap X @x
xnoremap X :normal! @x<CR>

" Ranger
" On escape go back to last opened buffer
"tnoremap <Esc> <C-\><C-n>:b#<CR>
" Make sure we can still navigate panes alright
"tnoremap <C-w> <C-\><C-n><C-w>

"===============================================================================
" LEADER_MAPS"{{{

" Faster tab movement
nmap <silent> <Leader>h :tabprev<CR>
nmap <silent> <Leader>l :tabnext<CR>
nmap <silent> <Leader>c :tabnew<CR>
nmap <silent> <Leader>x :tabclose<CR>

nmap <Leader>u :UndotreeToggle<CR>

" <leader>a selects the whole buffer
nnoremap <leader>a ggVG
" <leader>e clears previous search highlighting
nnoremap <silent> <leader>e :noh<CR>
" <leader>w cds to the current directory in netrw
nnoremap <silent> <leader>w :cd %<CR>
" Restore previous session
nnoremap <silent> <leader>r :call RestoreSess()<CR>

" Remap Esc to Ctrl+l in interactive mode
imap <C-l> <Esc>

"===============================================================================

" SYNTAX_COLORS"{{{
" Switch syntax highlighting on, when the terminal has colors"}}}
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif
" Color overrides"{{{
"set background=dark"}}}
syntax enable
"colorscheme gruvbox

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    "if !exists('g:colors_name') || g:colors_name != 'base16-gruvbox-dark-hard'
    "  colorscheme base16-gruvbox-dark-hard
    "endif
endif

set termguicolors

hi Pmenu guibg=#b16286
" twig highlighting
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.rabl set filetype=ruby

hi Folded guibg=#333333 guifg=#333333
hi CursorLine guibg=#333333
hi Comment guifg=#555555
hi Search ctermfg=108 ctermbg=235 guifg=#a89984 guibg=#444444
"===============================================================================

" Lion alignment
let g:lion_squeeze_spaces = 1
let b:lion_squeeze_spaces = 1

"==============================================================================="{{{
" SAVE_PERSISTENT_UNDOS
" Make sure undos are persistent even after exit"}}}
set nobackup
set nowritebackup
set noswapfile
if !&diff
  if !has('nvim')
      set undodir=~/.vim/undodir
  end
  set undofile
endif

"==============================================================================="{{{
" CODE_INDENTATION
" Softtabs, 4 spaces by defaults"}}}
set tabstop=2 softtabstop=0 shiftwidth=2 expandtab
" Switch to a 2 space tab on these files
"autocmd FileType sass,scss,ruby,erb,yml,yaml,json,js,html setlocal shiftwidth=2 tabstop=2
set shiftround
set expandtab
set smartindent

"==============================================================================="{{{
" AIRLINE
" Set airline top tab and colors"}}}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#ale#enabled = 1

"==============================================================================="{{{
"FZF_AND_RIPGREP (Fuzzy finding)
" C-P calls FZF on all files"}}}
nnoremap <C-P> :Files<CR>

" bind C-f to grep word under cursor
nnoremap <C-f> :Findi <C-R><C-W><CR>
" bind Shift-k to find word under cursor while respecting gitignore
"nnoremap K :Find <C-R><C-W><CR>

" -g '!tags': always ignore the tags file"{{{
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options"}}}
command! -bang -nargs=* Find call fzf#vim#grep('rg -g "!tags" --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" Same as above, just respect gitignore
command! -bang -nargs=* Findi call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

let g:fzf_colors =
\ { 'fg':      ['fg', 'GruvboxOrange'],
  \ 'bg':      ['bg', 'CursorLineNr'] }
"===============================================================================
" EXPLORER"{{{
" set default list style for Explore"}}}
let g:netrw_liststyle=4
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
"===============================================================================
" VIM_REST_CONSOLE"{{{
" Allow request body on get requests"}}}
let g:vrc_allow_get_request_body = 1
let g:vrc_connect_timeout = 600

"==============================================================================="{{{
" VIM SKELETONS"}}}
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"

"==============================================================================="{{{
" ROOTER"}}}
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['.root', '.git/']

"==============================================================================="{{{
" LINE_NUMBERS"}}}
set number
set relativenumber
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
"==============================================================================="{{{
" CODE_FOLDEING"}}}
nn <silent> <Leader>] za

set foldmethod=syntax
set foldlevel=99
set foldlevelstart=99

autocmd FileType ruby,eruby
    \ set foldmethod=expr |
    \ set foldexpr=getline(v:lnum)=~'^\\s*#'

"==============================================================================="{{{
" SESSIONS"}}}

if has('nvim')
    fu! SaveSess()
    execute 'mksession! ' . getcwd() . '/.session.nvim'
    endfunction

    fu! RestoreSess()
    if filereadable(getcwd() . '/.session.nvim')
        execute 'so ' . getcwd() . '/.session.nvim'
        if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
            exec 'sbuffer ' . l
            endif
        endfor
        endif
    endif
    endfunction

    autocmd VimLeave * call SaveSess()
    "autocmd VimEnter * nested call RestoreSess()
end

"let g:ranger_replace_netrw = 1
"==============================================================================="{{{
" RSPEC"}}}
map <Leader>rsf :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rsl :call RunLastSpec()<CR>
map <Leader>rsa :call RunAllSpecs()<CR>

set guicursor=
