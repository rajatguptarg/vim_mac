" Vimrc: Rajat Gupta

" Execute pathogen
execute pathogen#infect()

autocmd BufRead,BufNewFile   *.js,*.html set shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile   *.jinja,*.html set shiftwidth=2 tabstop=2 syntax=html

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set background=dark         " background for solarized colorscheme

set t_Co=256 " Set terminal colour to 256
let g:solarized_termcolors=256

" Airline
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

set laststatus=2   " Always show the statusline
set encoding=utf-8
set nocompatible " No compatibility with legacy Vi
set cursorline " Highlight the current row
set cursorcolumn "Highlight the current column
set colorcolumn=80 "Highlight 80th column
set number " Show line number

" Color Schemes
" colorscheme fruity
" colorscheme molokai
colorscheme valloric
" colorscheme railscasts
" colorscheme grb256
" colorscheme solarized

set history=1000
set undolevels=1000
set wildmenu " Turn Wild menu on
set ruler " Show ruler, the thing at the bottom showing cursor position
set ignorecase " Ignore case when searching
set smartcase " When there's a capital letter, be smart, match the exact string only
set hlsearch " Highlight search results. user :noh to unhighlight
set incsearch " On the fly, incremental search
set showcmd " Show command keys I press on the bottom
syntax enable " Enable syntax highlighting
set mouse=a " Enable mouse inside vim
set clipboard=unnamed " Normal copy/paste

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Set tab settings
set tabstop=4
set shiftwidth=4
set smartindent "Smart indent
set smarttab "Insert tabs on the start of a line according to shiftwidth, not tabstop
set autoindent "Always auto indent
set expandtab "Use space when tab is pressed

set title " Show filename title

" NerdTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

let mapleader="," " Map <Leader> to comma (,)
let NERDTreeIgnore = ['\.pyc$'] " Don't show .pyc files in NERDTree

let g:go_disable_autoinstall = 1 " vim-go always tries to install some packages on vim startup, disable it.

" Map <Leader>n to toggle NERDTree
nmap <Leader>n :NERDTreeMirrorToggle<cr>

let g:syntastic_check_on_open=1 " Syntax check on file open
let g:syntastic_html_checkers=[''] " Don't lint html

map <Leader> <Plug>(easymotion-prefix)

set foldmethod=indent   " Fold based on indent
set nofoldenable        " Dont fold by default

execute pathogen#infect()


let g:HackerEarthApiClientKey = "62bd0a1263f21181ae417712e08e11dbe3070e7f"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"ubuntu fonts
"set guifont=Monospace\ Bold\ 10
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h12
"set guifont=Monaco:h12

"macvim fonts
"set guifont=Source\ Code\ Pro\ for\ Powerline:h13

highlight TechWordsToAvoid ctermbg=red ctermfg=white
match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy/
autocmd BufWinEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd InsertEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd InsertLeave * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
autocmd BufWinLeave * call clearmatches()

" normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>ui

" Molokai ColorScheme
let g:molokai_original = 1
let g:rehash256 = 1

nnoremap <F1> :bp<cr>
nnoremap <F2> :bn<cr>

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Function to rename the variable under the cursor
function! Rnvar()
  let word_to_replace = expand("<cword>")
  let replacement = input("new name: ")
  execute '%s/\(\W\)' . word_to_replace . '\(\W\)/\1' . replacement . '\2/gc'
endfunction