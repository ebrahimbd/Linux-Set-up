# Complete Linux Set-Up
The current complete set up currently consist of following files

1).vimrc file

2).ackrc file

3).gitconfig file

4)c.vim

5)badwolf.vim

6)Heroku-terminal.vim

7)Install Script

## vimrc file

### Pre Installed Plugins
tpope/vim-fugitive

flazz/vim-colorschemes

vim-airline/vim-airline

airblade/vim-gitgutter

raimondi/delimitmate

majutsushi/tagbar

scrooloose/nerdtree

hari-rangarajan/cctree

vim-airline/vim-airline-themes

scrooloose/nerdcommenter

ludovicchabant/vim-gutentags

Valloric/YouCompleteMe

SirVer/ultisnips

honza/vim-snippets

dhruvasagar/vim-table-mode

a.vim

yggdroot/indentline

mileszs/ack.vim

mbbill/undotree

kana/vim-submode

junegunn/vim-easy-align

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

### Features

Description to be added soon

## ackrc file

-Ignores tags and cscope.out files

-using smart-case

-alphabetically sort

## gitconfig file 

-Not the one you should be using.

## C.vim
Author  : Mikhail Wolfson

URL     : https://www.vim.org/scripts/script.php?script_id=3064

## badwolf.vim
-Default as provided with plugin airline themes

## heroku-terminal.vim
-Little change to the defaults one

# Installation
To install the set up, clone using

`cd ~`

`git clone https://github.com/Manyyack/Linux-Set-up.git`

and run

`sudo ./install.sh`
