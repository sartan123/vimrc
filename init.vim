" Setting
set number
set autoindent
set shell=pwsh.exe
syntax enable

" Operation
nnoremap <Return><Return> <c-w><c-w> " エンター2回でタブ移動
nnoremap <silent> tt <cmd>belowright new<CR><cmd>terminal<CR> " 下分割でターミナルモードを起動
tnoremap <C-q> <C-\><C-n>:q<CR> "終了
tnoremap <ESC> <C-\><C-n> "ノーマルモード

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()
EOF
