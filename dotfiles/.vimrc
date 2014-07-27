" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim
"To use bash aliases:
set shellcmdflag=-ic
" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim73/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
"делаем так чтобы ундо сохранялось
if version >= 700
    set history=64
    set undolevels=128
    set undodir=~/.vim/undodir/
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
"добавляем статусную строчку
set laststatus=2
set statusline=%f:%c:%l\ (%p%%)\ %y%([%R%M]%)\ buf:\ #%n\ ASCII:\ [0x%B]\ [%{&fileencoding}]
"количество строк, которое всегда показывать в окне перед и после курсора
set scrolloff=5
"переключатся между табами по < >
nmap > :tabnext<CR>
nmap < :tabp<CR>
set spelllang=ru_ru,en_us
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
syn on
set number
colorscheme xoria256
"for python
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
autocmd FileType python set foldcolumn=1
autocmd FileType python nnoremap <space> za
"Настройки табов для Python, согласно рекоммендациям
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set smarttab
autocmd FileType python set expandtab "Ставим табы пробелами
autocmd FileType python set softtabstop=4 "4 пробела в табе
"omnicomplete for python
autocmd FileType python set omnifunc=pythoncomplete#Complete
"Автоотступ
autocmd FileType python set autoindent
"Подсвечиваем все что можно подсвечивать
autocmd FileType python let python_highlight_all = 1
autocmd FileType python map <F4> :TagbarToggle<CR> 
"сокращение для задания кодировки в начале файла
autocmd FileType python iab python2! #!/usr/bin/python2
autocmd FileType python iab utf! # -*- coding: utf-8 -*-

autocmd FileType c set autoindent
autocmd FileType c set tabstop=8
autocmd FileType c set shiftwidth=8 
autocmd FileType c set softtabstop=8
autocmd FileType c set textwidth=80
autocmd FileType c set noexpandtab
autocmd FileType c set cindent
autocmd FileType c set formatoptions=tcqlron
autocmd FileType c set cinoptions=:0,l1,t0,g0
autocmd FileType c map <F4> :TagbarToggle<CR>
autocmd FileTYpe c map <F1> :cw 5<CR>
autocmd FileType c compiler gcc
autocmd FileType c set colorcolumn=80
autocmd FileType c highlight  ColorColumn ctermbg=black
autocmd FileType c let &path.="/usr/include,/home/bigboss/Mausoleum/morg/git/linux-dev/include"

map <F3> :NERDTreeToggle <CR>
if has('gui_running')
set guifont=Liberation\ Mono\ 14
set guioptions-=T
set guioptions-=r
endif
