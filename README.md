# Complete Linux Set-Up

**WARNING : IF YOU ARE NOT ME, FORK THIS REPO AND REMOVE ALL THE STUFF YOU DON'T NEED,**
**I AM NOT TO BE BLAMED IF ANYTHING BREAKS**

The current complete set up currently consist of following files

## vimrc file
vim configuration files contains vim settings, plugin and custom maps

## ackrc file
ack tool configuration file

## c.vim
syntax file for c codes

## badwolf.vim
airline plugin modified theme

## Heroku-terminal.vim
colorscheme theme modified

## Install Script
script that makes the set up easier by automating

## Installation

To install the set up, clone using

`cd ~`

`git clone https://github.com/Manyyack/Linux-Set-up.git`

and run

`./install.sh`

## vimrc file

### Pre Installed Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'a.vim'
Plugin 'cohama/lexima.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'hari-rangarajan/cctree'
Plugin 'honza/vim-snippets'
Plugin 'kana/vim-submode'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'yggdroot/indentline'
Plugin 'FelikZ/ctrlp-py-matcher'

### Mappings

`nnoremap <leader>n :NERDTreeToggle<CR?`

`nnoremap <F3>      :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR?`

`nnoremap <leader>t :TagbarOpen fj<CR?`

`nnoremap <leader>g :GitGutterLineHighlightsToggle<CR?`

`nnoremap <leader>gp :GitGutterPrevHunk<CR?`

`nnoremap <leader>gn :GitGutterNextHunk<CR?`

`nnoremap <leader>a :bp<CR?`

`nnoremap <leader>d :bn<CR?`

`nnoremap <leader>i :IndentLinesToggle<CR?`

`nnoremap <leader>u :UndotreeToggle<cr>`

`nmap <silent> <leader>p :set paste<CR>"*p:set nopaste<CR?`

`nnoremap <leader>h :A<CR>`

`nnoremap <leader>f :Ack<space>`

`nnoremap <leader>fs :Ack<space><c-r>=expand("<cword>")<cr><CR>`

`nnoremap <leader>cr :CCTreeTraceReverse<CR>`

`nnoremap <leader>cf :CCTreeTraceForward<CR>`

## ackrc file

- Configuration file for the ack

## gitconfig file

- Not the one you should be using.

## C.vim

Author  : Mikhail Wolfson

URL     : https://www.vim.org/scripts/script.php?script_id=3064

## badwolf.vim

- Default as provided with plugin airline themes

## heroku-terminal.vim

- Little change to the defaults one
