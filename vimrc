set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
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

" typescript and react highlighting setting for sytanx rendering
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" indentline setting
let g:indentLine_color_term = 239

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='gruvbox'

" theme mode setting
syntax enable
set number
set background=dark
let g:solarized_termtrans = 1
colorscheme gruvbox

" 设置vim-plug管理的插件安装位置
 call plug#begin('~/.vim/bundle')


" 下面就是一些插件的例子.
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

" this is for typescript and react jsx
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'Yggdroot/indentLine'


Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'


" 所有的插件都需要安装在这条命令之前
call plug#end()            " 必须的
