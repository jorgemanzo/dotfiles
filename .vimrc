syntax on
set incsearch
set report=0
set showcmd
set showmatch
set backspace=indent,eol,start
set virtualedit+=block
set number
set numberwidth=5
set sidescrolloff=10
set list
set listchars=tab:\¦·,trail:·
set clipboard=unnambed
set mouse=a
set noshowmode
autocmd BufWritePre * %s/\s\+$//e "
set nohlsearch
set splitright

let g:enable_bold_font = 1 "Bolds function names and lang controls
let g:enable_italic_font = 1 "Italic comments
let g:hybrid_transparent_background = 1 "transparent bg
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround' "Helps change parens, quotes, etc
Plug 'kristijanhusak/vim-multiple-cursors' "Multi select with ctrl-n
Plug 'nathanaelkane/vim-indent-guides' "Visulizes indentation
Plug 'tomtom/tcomment_vim' "Toggle comments
Plug 'itchyny/lightline.vim' "Provides a minimal statusline
Plug 'jiangmiao/auto-pairs' "Auto close pair characters like (,)
Plug 'Valloric/MatchTagAlways' "Auto highlight html tags
"" For the above plugin

let g:mta_filetypes = {
            \ 'html' : 1, 'xhtml' : 1, 'xml' : 1,
            \ 'javascript' : 1,
            \ 'javascript.jsx' : 1,
            \ 'javascript.tsx' : 1,
            \ 'typescript.tsx' : 1,
            \ 'typescript' : 1
            \}

" Themes
Plug 'joshdick/onedark.vim'
Plug 'kristijanhusak/vim-hybrid-material'


""""""" Javascript
" Regular JS
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"" Syntax highlighting for .jsx (typescript)
Plug 'peitalin/vim-jsx-typescript'
"" Typescript "
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

" GraphQL syntax highlighting
Plug 'jparise/vim-graphql'
call plug#end()
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

set termguicolors
set laststatus=2

" Vim indent stuff
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
autocmd FileType python,rust let g:indent_guides_guide_size = 1
autocmd FileType typescript.tsx,javascript.jsx,javascript,typescript let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_tab_guides = 1

" Color stuff
colorscheme onedark

" Normal         xxx ctermfg=145 ctermbg=235 guifg=#ABB2BF guibg=#282C34
hi IndentGuidesEven guibg=#3a3a3d guifg=#4f4f56
hi IndentGuidesOdd guibg=#262a2c guifg=#24282a
hi Comment cterm=italic guifg=#4a5158
hi String guifg=#98C379 guibg=#2a2e34
highlight NonText ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE


" Yellows
hi Number guifg=#E5C07B
hi Special guifg=#E5C07B
hi Boolean guifg=#E5C07B
hi Type guifg=#F0A15F
" #D19A66

" purple
hi CtrlPMatch guifg=#ba9ef7
hi Visual guibg=#364652
hi Keyword guifg=#ba9ef7
hi Function guifg=#5682A3

""" Pink
"""""" vim-jsx ONLY
hi Identifier guifg=#D96Ab2
hi Conditional guifg=#D96AB2


" light blue
hi tsxTagName guifg=#59ACE5
" dark blue
hi tsxCloseString guifg=#2974a1
hi tsxCloseTag guifg=#2974a1
hi tsxAttributeBraces guifg=#2974a1
hi tsxEqual guifg=#2974a1
" green
hi tsxAttrib guifg=#1BD1C1


" cyan
hi Constant guifg=#56B6C2
hi typescriptBraces guifg=#56B6C2
hi typescriptEndColons guifg=#56B6C2
hi typescriptRef guifg=#56B6C2
hi typescriptPropietaryMethods guifg=#56B6C2
hi typescriptEventListenerMethods guifg=#56B6C2
hi typescriptFunction guifg=#56B6C2
hi typescriptVars guifg=#56B6C2
hi typescriptParen guifg=#56B6C2
hi typescriptDotNotation guifg=#56B6C2
hi typescriptBracket guifg=#56B6C2
hi typescriptBlock guifg=#56B6C2
hi typescriptJFunctions guifg=#56B6C2
hi typescriptSFunctions guifg=#56B6C2
hi typescriptInterpolationDelimiter guifg=#56B6C2
hi typescriptExceptions guifg=#DDA671
" hi typescriptIdentifier guifg=#907161
" hi typescriptStorageClass guifg=#907161
hi typescriptIdentifier guifg=#65809D
hi typescriptStorageClass guifg=#65809D
" JSON
hi jsonCommentError cterm=italic guifg=#4a5158

" javascript
hi jsParens guifg=#56B6C2
hi jsObjectBraces guifg=#C678DD
hi jsFuncBraces guifg=#56B6C2
hi jsObjectFuncName guifg=#D19A66
hi jsObjectKey guifg=#56B6C2

" vim-jsx-typescript
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66


" JSX Dark Blue and Neon Green highlights
hi xmlEndTag guifg=#2974a1
" hi tsxCloseString guifg=#2974a1
hi tsxCloseString guifg=#15608f
hi htmlTag guifg=#2974a1
hi htmlEndTag guifg=#2974a1
hi htmlTagName guifg=#59ACE5
hi tsxAttrib guifg=#1BD1C1

hi tsxTypeBraces guifg=#BDA7CC
hi tsxTypes guifg=#8D779C
hi tsxIfOperator guifg=#56B6C2
hi tsxElseOperator guifg=#56B6C2





" Identify the syntax highlighting group used at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


