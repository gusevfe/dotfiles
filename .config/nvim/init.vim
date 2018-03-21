set termguicolors

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath+=/home/gusev/.config/nvim/bundles/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('/home/gusev/.config/nvim/bundles')
  call dein#begin('/home/gusev/.config/nvim/bundles')
  " Let dein manage dein
  " Required:
  call dein#add('/home/gusev/.config/nvim/bundles/repos/github.com/Shougo/dein.vim')
  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('rafaqz/citation.vim')
  call dein#add('vim-scripts/DoxygenToolkit.vim')
  call dein#add('icymind/NeoSolarized')
  " Required:
  call dein#end()
  call dein#save_state()
endif
" Required:
filetype plugin indent on
syntax enable
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
"End dein Scripts-------------------------

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en_US.UTF-8        " sets the language of the messages / ui (vim) 
let mapleader=","

source $HOME/.config/nvim/colemak.vim

syntax enable
set background=dark
colorscheme NeoSolarized

" set clipboard=autoselect,exclude:.* 
noremap <silent> ,q :<C-u>confirm quit<CR>
noremap <silent> ,w :<C-u>w<CR>
set smartindent
filetype indent on
set autoindent

set ignorecase
"set smartcase
set tabstop=2
set shiftwidth=2
set expandtab

" Tab-competition in command-line
set wildmenu
set wildmode=longest:full

iunmap <F3>
set pastetoggle=<F3>

" TAB instead of ESC
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

let g:fugitive_no_maps=1

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
set t_Co=256
let g:airline_theme='solarized'
let g:airline#extensions#tabline#tab_nr_type = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0

" Text width
set textwidth=80

" Quickfix 
nmap ,u :cp<CR>
nmap ,e :cn<CR>
nmap ,m :make<CR>

" Search
set nowrapscan

" NERDCommenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
autocmd FileType r setlocal commentstring=#\ %s
nmap <Leader>c  <Plug>NERDCommenterToggle
vmap <Leader>c  <Plug>NERDCommenterToggle

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let undodir = expand("$HOME/.local/share/nvim/undo")
    call system('mkdir -p' . undodir)
    let &undodir = undodir
    set undofile
endif

let g:deoplete#enable_at_startup = 1

" Next & prev in autocomplete
imap <C-n>     <Plug>(neosnippet_expand_or_jump)
smap <C-n>     <Plug>(neosnippet_expand_or_jump)
xmap <C-n>     <Plug>(neosnippet_expand_target)
noremap <C-e> <C-n>|
noremap <C-u> <C-p>|
