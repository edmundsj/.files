" First, we want to set up vundle
set nocompatible
filetype off
 " set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 " BEGIN SEXY PLUGINS
" ------------------------
 Plugin 'gmarik/Vundle.vim'
 " Proper python folding
Plugin 'tmhedberg/SimpylFold'
 " Proper python indentation
Plugin 'vim-scripts/indentpython.vim'
 "Python auto-complete. <leader>g now goes to definition
Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
 " Python syntax checking with syntastic
Plugin 'vim-syntastic/syntastic'
 " PEP8 checking
Plugin 'nvie/vim-flake8'
 " Make our colorscheme nice and easy on the eyes
"Plugin 'jnurmine/Zenburn'
"colorscheme Zenburn
 " Add NERDTree for proper file exploration
Plugin 'scrooloose/nerdtree'
 " Add Godlike search capability using Ctrl-p
" Dear God this is so nice. It's better than using the command line.
" That's for damn sure.
Plugin 'kien/ctrlp.vim'
 " Allow git to be called from within vim
Plugin 'tpope/vim-fugitive'
 " Give us a nice status bar that shows us errrting.
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 " END SEXY PLUGINS
" --------------------------
 set tabstop=4
set shiftwidth=4
" fuck soft tabs. We use hard tabs here. And they are size 4.
 " extremely standard mapleader which is great
let mapleader = ","
 set encoding=utf-8
 " START NAVIGATION MODIFICATIONS
" -----------------------------------
" this remaps the hjkl movement to my programmer dvorak keyboard
" and I basically move the arrow keys to directly under my right hand
nnoremap t j
nnoremap c k
nnoremap n l
nnoremap T J
 " Jump to the bottom of the screen should be move down
nnoremap T L
" Jump to the top of the screen should be move up
nnoremap C H
 vnoremap t j
vnoremap c k
vnoremap n l
vnoremap T J
vnoremap C K
vnoremap N L
 " This remaps all the netrw bindings so we can navigate sanely.
"augroup netrw_mapping
	"autocmd!
	"autocmd filetype netrw call NetrwMapping()
"augroup END
 "function! NetrwMapping()
	"noremap <buffer> t j
	"noremap <buffer> c k
"endfunction
" these two lines allow me to use the n and c keys, and make my life easier so I don't have to push & but can just use r
nnoremap <leader>n n
nnoremap <leader>r &
nnoremap <leader>c c
 vnoremap <leader>n n
vnoremap <leader>c c
 " simple navigation between tabs using the control key
nnoremap <C-t> <C-W><C-J>
nnoremap <C-c> <C-W><C-K>
nnoremap <C-n> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
 " END NAVIGATION MODIFICATION
" -----------------------------------
 " START GENERAL CODING NICETIES
" -----------------------------------
 " I literally cannot survive without my line numberS
set number
 " Enable code folding
set foldmethod=indent
set foldlevel=99
 " use the spacebar for folding and unfolding
nnoremap <space> za
 "allow SimpylFold to show docstrings
let g:SimpylFold_docstring_preview=1
 " Make sure we are PEP-8 compliant (except we use hard tabs, bitches.
 " Next up is tabbing. I don't know why I should have to press < twice
" It is literally just misery. Make the common case fast, and this
" is very common. Also makes sure I don't need to re-select things
" in visual mode.
nnoremap < <<
nnoremap > >>
vnoremap > >gv
vnoremap < <gv
 " I like auto-indenting, let's keep it around for now.
:set autoindent
 " Add a couple nice commands for reST.
nnoremap <leader>- o-------------------------------------------------------------------<esc>
 " OH MY GOD THIS IS SO NICE
" Makes it so blocks of text continue as you would expect in vim
:set breakindent
 nnoremap <leader>h :put=strftime('%c')
 " enable syntax highlighting if it is not already on
syntax enable
 " add a visual line underneath the cursor to make things prettier.
set cursorline
 " allow all forms of python highlighting
let python_highlight_all = 1
 " make searching case-insensitive except when using uppercase
set ignorecase
set smartcase
 " and now we end our vundle shennanigans (must go at end of file)
call vundle#end()
filetype plugin indent on
