  filetype on
  filetype plugin on
  filetype plugin indent on
  " Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
" Lookings
  set number           "line number
  set cursorline       "hilight the line of the cursor
  set cursorcolumn     "hilight the column of the cursor
  set nowrap           "no line wrapping
  

  " change the color of chars over the width of 80 into blue
  " (uncomment to enable it)
  "au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  inoremap ' ''<ESC>i
  inoremap " ""<ESC>i
  inoremap ( ()<ESC>i
  inoremap [ []<ESC>i
  inoremap { {<CR>}<ESC>O

"for python
  let python_highlight_all=1
  au Filetype python set tabstop=4
  au Filetype python set softtabstop=4
  au Filetype python set shiftwidth=4
  au Filetype python set textwidth=79
  au Filetype python set expandtab
  au Filetype python set autoindent
  au Filetype python set fileformat=unix
  autocmd Filetype python set foldmethod=indent
  autocmd Filetype python set foldlevel=99


function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
call plug#begin('~/.vim/plugged')
  Plug 'tmhedberg/SimpylFold'
  Plug 'vim-airline/vim-airline'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'morhetz/gruvbox'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-surround'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
call plug#end()



"for plug
let g:indent_guides_guide_size  =1 
let g:indent_guides_start_level =2 

colorscheme gruvbox
set background=dark 

let NERDTreeWinSize=25
" 绑定F2到NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
" 关闭空白符检测
let g:airline#extensions#whitespace#enabled=0

let g:rbpt_colorpairs = [
                        \ ['brown',       'RoyalBlue3'],
                        \ ['Darkblue',    'SeaGreen3'],
                        \ ['darkgray',    'DarkOrchid3'],
                        \ ['darkgreen',   'firebrick3'],
                        \ ['darkcyan',    'RoyalBlue3'],
                        \ ['darkred',     'SeaGreen3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['brown',       'firebrick3'],
                        \ ['gray',        'RoyalBlue3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['Darkblue',    'firebrick3'],
                        \ ['darkgreen',   'RoyalBlue3'],
                        \ ['darkcyan',    'SeaGreen3'],
                        \ ['darkred',     'DarkOrchid3'],
                        \ ['red',         'firebrick3'],
                        \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"markdown
let g:mkdp_path_to_chrome = "/bin/chromium"
    " 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
    " 如果设置了该参数, g:mkdp_browserfunc 将被忽略

    let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
    " vim 回调函数, 参数为要打开的 url

    let g:mkdp_auto_start = 0
    " 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
    " markdown 文件的时候打开一次

    let g:mkdp_auto_open = 0
    " 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
    " 览窗口

    let g:mkdp_auto_close = 1
    " 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
    " 自动关闭预览窗口

    let g:mkdp_refresh_slow = 0
    " 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
    " 更新预览

    let g:mkdp_command_for_global = 0
    " 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
    " 文件可以使用改命令

    let g:mkdp_open_to_the_world = 0
    " 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
    " 默认只监听本地（127.0.0.1），其他计算机不能访问

   autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
   autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
   autocmd Filetype markdown inoremap ,s **** <++><Esc>F*hi
   autocmd Filetype markdown inoremap ,h ~~~~ <++><Esc>F~hi
   autocmd Filetype markdown inoremap ,e ** <++><Esc>F*i
   autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
   autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
   autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
   autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
   autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
   autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
   autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
   autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
   autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
   autocmd Filetype markdown inoremap ,l --------<Enter>

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
