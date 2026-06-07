# Vim Configuration

Configuration file:

```text
~/.vimrc
```

## Line Numbers

```vim
set number
set relativenumber
```

* `number` displays absolute line numbers.
* `relativenumber` displays relative line numbers for easier movement.

## Clipboard

```vim
set clipboard=unnamedplus
```

Use the system clipboard by default.

Examples:

```vim
y
p
```

instead of:

```vim
"+y
"+p
```

## Search

Disable search highlighting after a search completes:

```vim
set nohlsearch
```

## tmux Compatibility

Prevent gray rendering artifacts caused by italic text in some terminal and tmux configurations:

```vim
set nobreakindent
set t_ZH=
set t_ZR=

hi htmlBoldItalic term=bold cterm=bold gui=bold
```

## HTML Editing

Enable HTML tag matching with `%`:

```vim
syntax on
filetype plugin indent on
runtime macros/matchit.vim
```

Example:

```html
<div>Hello</div>
```

Place the cursor on either tag and press:

```vim
%
```

## Comment Highlighting

Customize comment colors:

```vim
highlight Comment ctermfg=81 ctermbg=NONE

highlight link htmlComment Comment
highlight link htmlCommentPart Comment
highlight link htmlCommentError Comment

highlight link jsonComment Comment
highlight link jsonLineComment Comment
```

**Purpose**

* Use a consistent light-blue color for comments.
* Align comment colors across different file types.
* Improve readability when switching between HTML, CSS, JavaScript, Shell, and JSON files.

## JSONC Support

Treat `.json` files as JSONC to allow comments:

```vim
augroup JsoncForJson
  autocmd!
  autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
augroup END
```

## Color Scheme

Use the Industry color scheme:

```vim
colorscheme industry
```

Additional appearance settings:

```vim
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermfg=15 ctermbg=NONE
highlight CursorLineNr ctermfg=15 ctermbg=NONE
```

**Purpose**

* Remove Vim's default background color.
* Allow the terminal background to show through.
* Align the background appearance between Vim and the terminal emulator.
* Provide a more consistent appearance when using Vim inside tmux on Rocky Linux.

## Custom Key Mappings

Leader key:

```vim
let mapleader = ","
```

### Open Markdown Viewer

```vim
nnoremap <leader>m :silent !mdview %<CR>:redraw!<CR>
```

Usage:

```text
,m
```

Open the current Markdown file in the external Markdown Viewer.
