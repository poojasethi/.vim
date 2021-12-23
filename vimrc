let mapleader = ","
set timeoutlen=3000
set ttimeoutlen=1000
set showcmd

set number
set autoindent
set t_ZH=[3m
set t_ZR=[23m
highlight Comment cterm=italic

" Useful for previewing markdown
set conceallevel=2

" Use for removing extra whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Set up plug-ins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ruanyl/vim-gh-line'
Plug 'ludovicchabant/vim-gutentags'
Plug 'psf/black'
Plug 'fisadev/vim-isort'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Below is for NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Below is for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_user_command = {
    \ 'types': {
      \ 1: ['.ctrlp', 'cd %s && git ls-files . -co --exclude-standard'],
      \ 2: ['.git', 'cd %s && git ls-files . -co --exclude-standard'],
      \ 3: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
    \ 'fallback': 'find %s -type f'
    \ }
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'results:100'

"Below is for the onedark theme
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let g:onedark_terminal_italics=1
syntax on
colorscheme onedark

"Below is for Python highlighting (from polyglot)
let g:python_highlight_all = 1

" Below is for GitHub Lines
let g:gh_line_map_default = 1
let g:gh_line_blame_map_default = 1

" let g:gh_line_map = 'gl'
" let g:gh_line_blame_map = 'gb'
let g:gh_trace = 1

" Below is for Gutentags
" set statusline+=%{gutentags#statusline()}

" Run black on save
let g:black_linelength = 120
autocmd BufWritePre *.py execute ':Black'

" Run isort on save
let g:vim_isort_map = '<C-i>'
autocmd BufWritePre *.py execute ':Isort'

" Run commands for CoC
source ~/.vim/coc-config.vim
