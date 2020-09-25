call plug#begin('~/.vim/plugged')
"Plug 'davidhalter/jedi-vim'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
" Plug 'gko/vim-coloresque'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'vim-airline/vim-airline' " Install powerline/fonts.git, does nothing 
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set number relativenumber

let g:tex_flavor = 'latex'

set t_Co=256

highlight LineNr ctermfg=8

" spacing
set numberwidth=4



syntax enable
colorscheme dracula
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
"highlight LineNr ctermfg=8

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
      \ 're!\\hyperref\[[^]]*',
      \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\(include(only)?|input){[^}]*',
      \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
      \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
      \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
      \ ]

autocmd CompleteDone * pclose " closes the reference windows after finishing with an function

set shellcmdflag=-ic " Makes :! work as .bashrc configured command prompt

" Make own theme in .vim/plugged/vim-airline/autoload/airline/themes/dark.vim
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch ='⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''     " ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"Folding 
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

