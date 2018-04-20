set tabstop=4
set shiftwidth=4
" fuck soft tabs. We use hard tabs here. And they are size 4.

" extremely standard mapleader which is great
let mapleader = ","

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

" these two lines allow me to use the n and c keys, and make my life easier so I don't have to push & but can just use r
nnoremap <leader>n n
nnoremap <leader>r &
nnoremap <leader>c c

vnoremap <leader>n n
vnoremap <leader>c c

" I literally cannot survive without my line numberS
set number

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

" OH MY GOD THIS IS SO NICE
" Makes it so blocks of text continue as you would expect in vim
:set breakindent
