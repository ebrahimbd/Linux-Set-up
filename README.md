# Complete Linux Set-Up
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

## vimrc file

### Pre Installed Plugins
tpope/vim-fugitive
    Git wrapper within the vim

flazz/vim-colorschemes
    Awesome colorschemes for vim

vim-airline/vim-airline
    Sexy statusline that is integrated with tagbar, gitgutter, fugitive and ycm

vim-airline/vim-airline-themes
    Sexy status line themes

airblade/vim-gitgutter
    git diff plugin.

raimondi/delimitmate
    Things you hate to type when you are heavy user of IDE

majutsushi/tagbar
    Used for jumping to different tags within a file

scrooloose/nerdtree
    Used for navigating source codes

hari-rangarajan/cctree
    I simply low this. Used to trace functions, very helpful in long projects

scrooloose/nerdcommenter
    A quick commenting plugin

ludovicchabant/vim-gutentags
    the best plugin if you are someone working with a huge source code. Generates tags on the go from the root folder

Valloric/YouCompleteMe
    Autocomplete ?

SirVer/ultisnips
    PASS

honza/vim-snippets
    PASS

dhruvasagar/vim-table-mode
    |---+-----+--------+--------+----+-----|
    | I | Can | Create | Tables | in | Vim |
    |---+-----+--------+--------+----+-----|

a.vim
    Jump between .c and .h files.

yggdroot/indentline
    Slick indent line. Do I need to tell more.

mileszs/ack.vim
    I really can't explain how useful this thing is.
    TODO : Add a pic

mbbill/undotree
    Visualize your undo's

kana/vim-submode
    PASS

junegunn/vim-easy-align
    PASS

### Mappings

`nnoremap <leader>n :NERDTreeToggle<CR?`
Open/Close NerdTree

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
