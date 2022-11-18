" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " For commenting gcc & gc
    Plug 'https://github.com/tpope/vim-commentary' 
    " Status bar
    Plug 'https://github.com/vim-airline/vim-airline' 
    Plug 'vim-airline/vim-airline-themes'
    " CSS Color Preview
    Plug 'https://github.com/ap/vim-css-color' 
    " Retro Scheme
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
    "Auto Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Dev Icons
    Plug 'https://github.com/ryanoasis/vim-devicons' 
    " Vim Terminal
    Plug 'https://github.com/tc50cal/vim-terminal' 
    " Tagbar for code navigation
    Plug 'https://github.com/preservim/tagbar'
    " Theme
    Plug 'joshdick/onedark.vim'
    " Rainbow Brackets
    Plug 'https://github.com/frazrepo/vim-rainbow.git'
    " Transparency
    Plug 'tribela/vim-transparent'   

    call plug#end()

