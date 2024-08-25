" Setting
syntax enable
set number
set autoindent
set shell=pwsh.exe
set encoding=utf-8
set noswapfile
set nobackup
set noundofile

" Operation
nnoremap <Return><Return> <c-w><c-w> " エンター2回でタブ移動
nnoremap <silent> tt <cmd>belowright new<CR><cmd>terminal<CR> " 下分割でターミナルモードを起動
tnoremap <ESC> <C-\><C-n> "ノーマルモード
autocmd TermOpen * setlocal nonumber norelativenumber
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

if expand("%:t") =~ ".*\.go"
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
endif

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()
EOF

" vim-go settings for better highlighting
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
