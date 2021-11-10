let mapleader = ","
set timeoutlen=3000
set ttimeoutlen=100
set showcmd

set relativenumber
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
Plug 'ycm-core/YouCompleteMe'
Plug 'pgr0ss/vim-github-url'
call plug#end()

"Below is for NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Below is for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Below is for the onedark theme
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let g:onedark_terminal_italics=1
syntax on
colorscheme onedark

"Below is for Python highlighting (from polyglot)
let g:python_highlight_all = 1

"Below is for YouCompleteMe (YCM)
let g:ycm_python_interpreter_path = '/usr/bin/python3.8'
let g:ycm_python_sys_path = ''
let g:ycm_extra_conf_vim_data = [
      \  'g:ycm_python_interpreter_path',
      \  'g:ycm_python_sys_path'
      \]
let g:ycm_global_ycm_extra_conf = '~/.vim/global_extra_conf.py'

