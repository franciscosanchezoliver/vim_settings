set tabstop=4       " Number of spaces that a tab character represents
set shiftwidth=4    " Number of spaces to use for indentation
set expandtab       " Converts tabs to spaces
set softtabstop=4   " Fine-tunes backspace behavior with spaces instead of tabs


" Create a vertical line
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray guibg=gray


" Don't wrap text
:set textwidth=0
:set wrapmargin=0

" Activate colors in the vim editor
syntax on         " Enable syntax highlighting
set t_Co=256      " Ensure 256-color support in the terminal
colorscheme desert  " Replace 'desert' with your preferred colorscheme

" Line number
set number
set relativenumber


