set runtimepath+=~/.vim_runtime

"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set backspace=indent,eol,start

nmap <F1> :below terminal ++rows=10<CR>

nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
autocmd VimEnter * execute 'NERDTree' | wincmd p
autocmd WinEnter * if winnr('$') == 1 && exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) == 1 | quit | endif

set splitright
set splitbelow


" indentline setting
let g:indentLine_color_term = 239

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" make terminal scroll. to comeback, press i
tnoremap <c-b> <c-\><c-n>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='gruvbox'

" theme mode setting
syntax enable
set number
set background=dark
let g:solarized_termtrans = 1
colorscheme gruvbox

call plug#begin('~/.vim/bundle')
" 插件必须装在  plug#begin/end这两行命令之间.
" 对于在github上面的插件, 我们可以用以下方法添加, 只需要添加`用户名/插件名称`就行
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'ciaranm/inkpot'

Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'

Plug 'jparise/vim-graphql'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-ragtag'

Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'


" 所有的插件都需要安装在这条命令之前
call plug#end()            " 必须的
