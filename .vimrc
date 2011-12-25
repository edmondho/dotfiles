"
" File: .vimrc
" Author: edmondho
" Modified: 2011-11-18
"
" Heavily based on: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
"
" When in doubt, consult: http://learnvimscriptthehardway.stevelosh.com/
"


"-------------------------------------------------------------------------------
" Preamble
"-------------------------------------------------------------------------------
set nocompatible


"-------------------------------------------------------------------------------
" Basic options
"-------------------------------------------------------------------------------
set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set ttyfast
set lazyredraw
set cursorline
set backspace=indent,eol,start
set relativenumber
set laststatus=2
set history=1000
"set undoreload=10000
set nolist
set listchars=tab:▶▷,eol:↲
set splitbelow
set splitright
set ttimeout
set notimeout
set nottimeout
set shiftround
set autowrite
set autoread
"set notitle
set colorcolumn=81

" Tabs, spaces, wrapping
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set textwidth=0

" Searching
set ignorecase
set smartcase
set incsearch




"-------------------------------------------------------------------------------
" Environment options
"-------------------------------------------------------------------------------
if has('gui_running')
  if has('gui_macvim')
    set guifont=Menlo:h12
    colorscheme chroma
    syntax on

    set guioptions-=T   " Remove toolbar
    set guioptions-=l   " Remove left scrollbar
    set guioptions-=L   " Remove left scrollbar
    "set guioptions-=r   " Remove left scrollbar
    "set guioptions-=R   " Remove left scrollbar
    set guioptions-=b   " Remove bottom scrollbar

    " For MacVim 7.3, enable Preferences>Advanced>Experimental Renderer
    set transparency=10

    " Full screen means FULL screen
    "set fuoptions=maxvert,maxhorz
  else
    " Non-MacVim GUI, e.g. gVim
  endif
else
  " Console Vim
endif



"-------------------------------------------------------------------------------
" Status line
"-------------------------------------------------------------------------------
set statusline=%f    " Path
set statusline+=%m   " Modified flag
set statusline+=%r   " Readonly flag
set statusline+=%w   " Preview window flag

set statusline+=%=   " Right align

" [<file format>/<encoding>/<type>]
set statusline+=[
set statusline+=%{&ff}                        " Format (unix/DOS)
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8)
set statusline+=/
set statusline+=%{&ft}                        " Type (python)
set statusline+=]

" [<line position>/<line count>:<column position>]
set statusline+=\ [%l\/%L\:%03c]



"-------------------------------------------------------------------------------
" Global mappings
"-------------------------------------------------------------------------------

" Move to beginning and end of line
nnoremap H 0
nnoremap L $

" Disable man
nnoremap K <nop>



"-------------------------------------------------------------------------------
" Leader mappings
"-------------------------------------------------------------------------------
let mapleader = "-"

" Edit .vimrc easily
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quote/paren/brace word under cursor
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel

" Quote/paren/brace Visual selection FIXME
vnoremap <leader>" <esc>a"<esc>gvgv<esc>hi"<esc>

" Toggle invisible characters
nnoremap <leader>si :set list!<cr>

" Change shiftwidth/softtabstop
function! ChangeShiftWidth(width)
  execute "set shiftwidth=" . a:width
  execute "set softtabstop=" . a:width
endfunction

nnoremap <leader>sw2 :call ChangeShiftWidth(2)<cr>
nnoremap <leader>sw4 :call ChangeShiftWidth(4)<cr>



"-------------------------------------------------------------------------------
" Local leader mappings
"-------------------------------------------------------------------------------
let maplocalleader = "\\"



"-------------------------------------------------------------------------------
" Global Abbreviations
"-------------------------------------------------------------------------------
func! EatChar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
"iabbr <silent> if if ()<Left><C-R>=EatChar('\s')<CR>

" Typos
iabbrev adn and
iabbrev teh the
iabbrev taht that

" Expansions
iabbrev eh@ edmondho@gmail.com





"-------------------------------------------------------------------------------
" Filetype-specific configuration
"-------------------------------------------------------------------------------

" C
augroup ft_c
  au!
augroup END

" C++
augroup ft_cpp
  au!
augroup END

" HTML
augroup ft_html
  au!
  " Common HTML entity expansion
  au FileType html :iabbrev <silent> ldq &ldquo;<C-R>=EatChar('\s')<CR>
  au FileType html :iabbrev <silent> rdq &rdquo;<C-R>=EatChar('\s')<CR>
  au FileType html :iabbrev <silent> lsq &lsquo;<C-R>=EatChar('\s')<CR>
  au FileType html :iabbrev <silent> rsq &rsquo;<C-R>=EatChar('\s')<CR>
augroup END

" PHP
augroup ft_php
  au!
  " Common HTML entity expansion
  au FileType php :iabbrev <silent> ldq &ldquo;<C-R>=EatChar('\s')<CR>
  au FileType php :iabbrev <silent> rdq &rdquo;<C-R>=EatChar('\s')<CR>
  au FileType php :iabbrev <silent> lsq &lsquo;<C-R>=EatChar('\s')<CR>
  au FileType php :iabbrev <silent> rsq &rsquo;<C-R>=EatChar('\s')<CR>
augroup END

" CSS
augroup ft_css
  au!
augroup END

" JavaScript
augroup ft_javascript
  au!
  au FileType javascript :iabbrev <buffer> iff if () {}<left><left><left><left>
augroup END
