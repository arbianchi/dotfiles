set nocompatible " Fuck VI... That's for grandpas.
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Indentation guides
set ts=1 sw=1 et
let g:indent_guides_guide_size=2

" Let vundle manage itself:
Plugin 'gmarik/vundle'

" Just a shitload of color schemes.
" https://github.com/flazz/vim-colorschemes#current-colorschemes
Plugin 'flazz/vim-colorschemes'
let g:solarized_termcolors=256
Plugin 'altercation/vim-colors-solarized'

" colorscheme zenburn 
hi LineNR ctermfg=9
augroup CLNRSet
    autocmd! ColorScheme * hi LineNR ctermfg=9
augroup END
try
    colorscheme lilypink
catch
    set background=light
    colorscheme hybrid_material
endtry

" Fuzzy finder -- absolutely must have.
Plugin 'kien/ctrlp.vim'

" Support for easily toggling comments.
Plugin 'tpope/vim-commentary'

" SYNTAX
Plugin 'jiangmiao/auto-pairs'
Plugin 'leshill/vim-json'
Plugin 'pbrisbin/html-template-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'lunaru/vim-twig'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jeroenbourgois/vim-actionscript'

"Plugin 'Valloric/YouCompleteMe'

" vim already has syntax support for javascript, but the indent support is
" horrid. This fixes that.
Plugin 'pangloss/vim-javascript'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Plugin 'indenthtml.vim'

" I write markdown a lot. This is a good syntax.
Plugin 'tpope/vim-markdown'

" LessCSS -- I use this every day.
Plugin 'groenewege/vim-less'

"Rails-y things
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'

"Mouse scroll
set ttymouse=xterm2
set mouse=a

"Shell style tab completion
set wildmenu
set wildmode=list:longest

"Copy Paste
vmap <C-.> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+p

map == mzgg=G`z

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

"Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.
set number
" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","


" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap <C-c>  <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

"Navigate tabs
map t gt
map T gT

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>


" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk
noremap O f
" Plugin settings:
" Below are some 'sane' (IMHO) defaults for a couple of the above plugins I
" referenced.

" Map the key for toggling comments with vim-commentary
" nnoremap <leader>c <Plug>CommentaryLine

" Remap ctrlp to ctrl-t -- map it however you like, or stick with the
" defaults. Additionally, in my OS, I remap caps lock to control. I never use
" caps lock. This is highly recommended.
"let g:ctrlp_map = '<c-t>'

" Let ctrlp have up to 30 results.
let g:ctrlp_max_height = 30

"NERDTree-like setting
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:ackprg = 'ag --nogroup --nocolor --column'

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    let g:ctrlp_use_caching = 0
endif

"bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

