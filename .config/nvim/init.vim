let mapleader=" "
let g:netrw_banner=0
colorscheme xoria256

" recursively search directories and subdirectories
set path+=**
set incsearch
"set number rnu
set termguicolors bg=dark
set tabstop=4 softtabstop=4 shiftwidth=4
set cindent
"set smartindent autoindent
set expandtab
"set makeprg=gcc\ -o\ exe\ %\ -lm
set makeprg=gcc\ -o\ main\ %\ -Wall\ -Werror
set noruler noshowmode showcmd
set scrolloff=2
set tw=80
set laststatus=0
"set guicursor=""
"set statusline=""
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all
"set undofile
"set undodir=~/.cache/vim/undo
"set undolevels=1000 "set undoreload=3000

syntax enable
filetype plugin on

autocmd FileType html,css setlocal tabstop=2 softtabstop=2 shiftwidth=2 

nnoremap <leader><cr> :w<cr>:so ~/.config/nvim/init.vim<cr>
nnoremap <leader>v :e ~/.dotfiles/.config/nvim/init.vim<cr>

nnoremap <leader>Y mmggVG:w ! xclip -sel clip<cr><cr>`mzz
vnoremap <leader>y :w ! xclip -sel clip<cr><cr>
vnoremap <leader>p "_dP

nnoremap <silent><c-k> :bn<cr>`"
nnoremap <silent><c-j> :bp<cr>`"
nnoremap <leader>d :bd<cr>
nnoremap <leader>j :ls<cr>:b 
nnoremap <leader>k :e <c-d>
nnoremap <leader>g :vimgrep 

nnoremap <leader><c-p> :copen 6<cr>
nnoremap <silent><c-l> :cnext<cr>
nnoremap <silent><c-h> :cprev<cr>
nnoremap <leader>m :w<cr>:!clear<cr>:make<cr>
nnoremap <leader>e :w<cr>:make<cr>:!clear;./main<cr>

nnoremap [<leader> mmo<esc>0D`m
nnoremap ]<leader> mmO<esc>0D`m

nnoremap ' `
nnoremap '' ``
nnoremap ` '
nnoremap `` ''
nnoremap <silent> { :execute "keepjumps norm! " . v:count1 . "{"<cr>
nnoremap <silent> } :execute "keepjumps norm! " . v:count1 . "}"<cr>

nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz
nnoremap <c-f> <c-f>zz
nnoremap <c-b> <c-b>zz
nnoremap G GGzz

"ia html <esc>:-1r ~/dotfiles/.config/vim/.index.html<cr>/body<cr>o

" REMINDERS:
" q: - enter command line editing in normal mode
" gd - go to declaration of local variable under the cursor
" gi
" gg=G fix indentation of whole file
"
" use w, W, b, B, e, E, ge, gE
"
" # - find next occurence of word under cursor backwards
" * - find next occurence of word under cursor forward
"
" Move cursor relative to visible area of window
" H - high
" M - mid
" L - low
"
" position the screen with the cursor at:
" zt - top
" zb - bottom
"
" gq - wrap line
" gggqG - wrap all lines in the file longer than set textwidth into multiple lines
" vim script functions
"let s:hidden_all = 0
"function! ToggleHiddenAll()
"    if s:hidden_all  == 0
"        let s:hidden_all = 1
"        set noshowmode
"        set noruler
"        set laststatus=0
"        set noshowcmd
"    else
"        let s:hidden_all = 0
"        set showmode
"        set ruler
"        set laststatus=2
"        set showcmd
"    endif
"endfunction
"
"nnoremap <S-h> :call ToggleHiddenAll()<cr>
