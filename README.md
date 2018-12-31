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

## vimrc file

### Pre Installed Plugins
- a.vim
: Jump between .c and .h files.
- mileszs/ack.vim
: I really can't explain how useful this thing is. TODO : Add a pic
- hari-rangarajan/cctree
: I simply low this. Used to trace functions, very helpful in long projects
- raimondi/delimitmate
: Things you hate to type when you are heavy user of IDE
- yggdroot/indentline
: Slick indent line. Do I need to tell more.
- scrooloose/nerdtree
: Used for navigating source codes
- scrooloose/nerdcommenter
: PASS
- honza/vim-snippets
: PASS
- dhruvasagar/vim-table-mode
: used for creating tables within vim
- majutsushi/tagbar
: Used for jumping to different tags within a file
- mbbill/undotree
: Visualize your undo's
: A quick commenting plugin
- SirVer/ultisnips
- tpope/vim-fugitive
: Git wrapper within the vim
- flazz/vim-colorschemes
: Awesome colorschemes for vim
- vim-airline/vim-airline
: Sexy statusline that is integrated with tagbar, gitgutter, fugitive and ycm
- vim-airline/vim-airline-themes
: Sexy status line themes
- airblade/vim-gitgutter
: git diff plugin.
- kana/vim-submode
: PASS
- junegunn/vim-easy-align
: PASS
- ludovicchabant/vim-gutentags
: the best plugin if you are someone working with a huge source code. Generates tags on the go from the root folder
- Valloric/YouCompleteMe
: Autocomplete ?

### Mappings

`nnoremap <leader>n :NERDTreeToggle<CR?`

Open/Close NerdTree

`nnoremap <F3>      :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR?`

Remove all the whitespace from the code

`nnoremap <leader>t :TagbarOpen fj<CR?`

Open Tagbar. To close type :TagbarClose

`nnoremap <leader>g :GitGutterLineHighlightsToggle<CR?`

Show/Hide gitgutter lines highlight 

`nnoremap <leader>gp :GitGutterPrevHunk<CR?`

Jump to the previous gitgutter hunk

`nnoremap <leader>gn :GitGutterNextHunk<CR?`

Jump to the next gitgutter hunk

`nnoremap <leader>a :bp<CR?`

Cycle to the previous buffer

`nnoremap <leader>d :bn<CR?`

Cycle to the next buffer

`nnoremap <leader>i :IndentLinesToggle<CR?`

Toggle indent lines

`nnoremap <leader>u :UndotreeToggle<cr>`

Show/Hide the undo tree

`nmap <silent> <leader>p :set paste<CR>"*p:set nopaste<CR?`

Toggle paste

`nnoremap <leader>h :A<CR>`

Jump between header and c source file

`nnoremap <leader>f :Ack<space>`

Ack ?

`nnoremap <leader>fs :Ack<space><c-r>=expand("<cword>")<cr><CR>`

Ack the current word under the cursor

`nnoremap <leader>cr :CCTreeTraceReverse<CR>`

CCTree reverse trace

`nnoremap <leader>cf :CCTreeTraceForward<CR>`

CCTree Forward trace

### Feature

- Shows line numbers
- incremental search
- highlight search
- no swap file (those irritating files)
- persistant undo
- syntax on 

## ackrc file

- Ignores tags and cscope.out files
- using smart-case
- alphabetically sort

## gitconfig file

- Not the one you should be using.

## C.vim

Author  : Mikhail Wolfson

URL     : https://www.vim.org/scripts/script.php?script_id=3064

## badwolf.vim

- Default as provided with plugin airline themes

## heroku-terminal.vim

- Little change to the defaults one

# Installation

To install the set up, clone using

`cd ~`

`git clone https://github.com/Manyyack/Linux-Set-up.git`

and run

`./install.sh`
