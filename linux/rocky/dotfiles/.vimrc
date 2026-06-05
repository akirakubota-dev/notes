set number
set relativenumber

set clipboard=unnamedplus

" Disable search highlighting
set nohlsearch

" Fix tmux gray blocks caused by italic rendering on wrapped HTML lines
set nobreakindent
set t_ZH=
set t_ZR=
hi htmlBoldItalic term=bold cterm=bold gui=bold

" Jump between matching HTML tags
syntax on
filetype plugin indent on
runtime macros/matchit.vim

" Modify color of comment lines
highlight Comment ctermfg=81 ctermbg=NONE
highlight link htmlComment Comment
highlight link htmlCommentPart Comment
highlight link htmlCommentError Comment
highlight link jsonComment Comment
highlight link jsonLineComment Comment
augroup JsoncForJson
  autocmd!
  autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
augroup END

" Color Scheme
colorscheme industry
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermfg=15 ctermbg=NONE
highlight CursorLineNr ctermfg=15 ctermbg=NONE

" Open Markdown Viewer with `,m`
let mapleader = ","
nnoremap <leader>m :silent !mdview %<CR>:redraw!<CR>
