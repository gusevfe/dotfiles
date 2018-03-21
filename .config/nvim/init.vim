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
  call dein#add('Shougo/neosnippet-snippets')
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