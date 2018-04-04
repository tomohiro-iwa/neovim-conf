set number
set autoindent


set tabstop=2 shiftwidth=2 noexpandtab

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim'))

call dein#add('szorfein/darkest-space')
colorscheme darkest-space

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('roxma/nvim-yarp')
call dein#add('roxma/vim-hug-neovim-rpc')
"call dein#add('Shougo/neco-vim')
"call dein#add('Shougo/neco-syntax')
call dein#add('zchee/deoplete-jedi')
call dein#add('vim-airline/vim-airline')
call dein#add('nathanaelkane/vim-indent-guides')


call dein#end()

"vim-indent-guides setup
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=239 ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=247 ctermbg=247

"deoplete setup
let g:python_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#complete_method = "omnifunc"
"let g:deoplete#enable_camel_case = 0
"let g:deoplete#enable_ignore_case = 0
"let g:deoplete#enable_refresh_always = 0
"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#max_list = 10000

"neocom

let python_highlight_all = 1

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

"hi CursorColumn guibg=#888888
"hi CursorLine guibg=#888888
"set cursorcolumn
"set cursorline
syntax on
