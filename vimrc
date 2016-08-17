syntax enable
set background=dark
" colorscheme solarized
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=2
set showcmd
set cursorline
set wildmenu
set laststatus=2
set title
set showtabline=2
nmap <C-up> <C-y>
nmap <C-down> <C-e>
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set paste
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" some colors
hi TabLineFill ctermfg=LightBlue ctermbg=DarkBlue
hi TabLineSel ctermfg=Green ctermbg=Green
