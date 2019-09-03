" Definitions
command! Customize call Customize()
function! Customize()
	" For using enter instead of esc.
	nnoremap <CR> i<CR><Esc>
	inoremap <CR> <Esc>
	set backspace=
endfunction

command! Decustomize call Decustomize()
function! Decustomize()
	iunmap <CR>
	nunmap <CR>
	set backspace=indent,eol,start
endfunction

" Fix mouse for wide terminals (220+ columns)
" See http://stackoverflow.com/questions/7000960/in-vim-why-doesnt-my-mouse-work-past-the-220th-column
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Custom functions and commands
syntax on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set guioptions+=b
set ruler
set number
set autoindent
set cindent
set linebreak
set nowrap
set sidescroll=1

set tabstop=2
set shiftwidth=2
set expandtab

set foldmethod=indent
set foldlevel=100
set foldcolumn=0

set nocompatible
set mouse=nvi " don't use mouse in ex-mode
set nomodeline " it's too dangerous, enable in Session.vim if needed
set modelines=1

set ignorecase
set smartcase
set incsearch
set wildmode=list:longest,full

" Search in dictionaries for autocompletion.
set complete-=i
set complete+=k
set completeopt=menu

" For using enter instead of esc.
" Customize

" For making Y work similar to C and D.
nnoremap Y y$

" For making cw work similar to dw
map cw dwi

" for quickly entering current date/time
imap <LocalLeader>date     <C-R>=strftime('%Y-%m-%d')<CR>
imap <LocalLeader>time     <C-R>=strftime('%T')<CR>
imap <LocalLeader>datetime <C-R>=strftime('%Y-%m-%d %T')<CR>

" smiley's (see http://unicode.org/emoji/charts/full-emoji-list.html)
digraph :) 128578
digraph ;) 128521
digraph :P 128523
digraph :o 128558
digraph :( 9785
digraph ;( 128546
digraph ++ 128077  " thumbs up
digraph -- 128078  " thumbs down
digraph [] 9744    " checkbox empty
digraph [+ 9745    " checkbox checked
digraph [- 9746    " checkbox crossed

" autocommands
autocmd Syntax * exec("set dict+=$VIMRUNTIME/syntax/".expand('<amatch>').'.vim')
autocmd! BufRead,BufNewFile *.vcf  setfiletype vcard
autocmd! BufRead,BufNewFile *.ics  setfiletype icalendar
autocmd! BufRead,BufNewFile *.otl  setfiletype otl
autocmd! BufRead,BufNewFile *.less setfiletype less
autocmd! BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,nginx.conf setfiletype nginx
autocmd! BufRead,BufNewFile Vagrantfile setfiletype ruby

" For netrw
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_liststyle=3
let g:netrw_banner=0

" For Pathogen
execute pathogen#infect()

" For bash
" See :help ft-bash-syntax
let g:is_bash	= 1

set background=light
colorscheme solarized
" Make IncSearch stand out a bit more (identical to solarized's standard Search highlighting)
exe "hi! IncSearch term=NONE,reverse cterm=NONE,reverse ctermfg=3 ctermbg=NONE"

" For specific file types
autocmd FileType html setlocal sw=1 ts=1 et
autocmd FileType javascript setlocal sw=2 ts=2 et " includeexpr=substitute(v:fname,'$','.js','')
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType markdown setlocal ts=2 sw=2 et wrap
autocmd FileType rst setlocal ft=rest
autocmd FileType html setlocal ts=1 sw=1 et

" For vimwiki
let g:vimwiki_list = [{'path': '~/Projects/vimwiki/', 'path_html': '~/Projects/vimwiki/public_html/', 'auto_export': 1}]

" For entering a lot of text
iabbrev lorem1 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
iabbrev lorem2 Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.
iabbrev lorem3 Nunc varius risus quis nulla. Vivamus vel magna. Ut rutrum. Aenean dignissim, leo quis faucibus semper, massa est faucibus massa, sit amet pharetra arcu nunc et sem. Aliquam tempor. Nam lobortis sem non urna. Pellentesque et urna sit amet leo accumsan volutpat. Nam molestie lobortis lorem. Quisque eu nulla. Donec id orci in ligula dapibus egestas. Donec sed velit ac lectus mattis sagittis.
iabbrev lorem4 In hac habitasse platea dictumst. Maecenas in ligula. Duis tincidunt odio sollicitudin quam. Nullam non mauris. Phasellus lacinia, velit sit amet bibendum euismod, leo diam interdum ligula, eu scelerisque sem purus in tellus. 
iabbrev lorem5 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet nunc id quam porta varius. Ut aliquet facilisis turpis. Etiam pellentesque quam et erat. Praesent suscipit justo.
iabbrev lorem6 Cras nec metus pulvinar sem tempor hendrerit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam in nulla. Mauris elementum. Curabitur tempor, quam ac rutrum placerat, nunc augue ullamcorper est, vitae molestie neque nunc a nunc. Integer justo dolor, consequat id, rutrum auctor, ullamcorper sed, orci. In hac habitasse platea dictumst. Fusce euismod semper orci. Integer venenatis quam non nunc. Vivamus in lorem a nisi aliquet commodo. Suspendisse massa lorem, dignissim at, vehicula et, ornare non, libero. Donec molestie, velit quis dictum scelerisque, est lectus hendrerit lorem, eget dignissim orci nisl sit amet massa. Etiam volutpat lobortis eros. Nunc ac tellus in sapien molestie rhoncus. Pellentesque nisl. Praesent venenatis blandit velit. Fusce rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque vitae erat. Vivamus porttitor cursus lacus. Pellentesque tellus. Nunc aliquam interdum felis. Nulla imperdiet leo. Mauris hendrerit, sem at mollis pharetra, leo sapien pretium elit, a faucibus sapien dolor vel pede. Vestibulum et enim ut nulla sollicitudin adipiscing. Suspendisse malesuada venenatis mauris. Curabitur ornare mollis velit. Sed vitae metus. Morbi posuere mi id odio. Donec elit sem, tempor at, pharetra eu, sodales sit amet, elit.
iabbrev lorem7 Curabitur urna tellus, aliquam vitae, ultrices eget, vehicula nec, diam. Integer elementum, felis non faucibus euismod, erat massa dictum eros, eu ornare ligula tortor et mauris. Cras molestie magna in nibh. Aenean et tellus. Fusce adipiscing commodo erat. In eu justo. Nulla dictum, erat sed blandit venenatis, arcu dolor molestie dolor, vitae congue orci risus a nulla. Pellentesque sit amet arcu. In mattis laoreet enim. Pellentesque id augue et arcu blandit tincidunt. Pellentesque elit ante, rhoncus quis, dapibus sit amet, tincidunt eu, nibh. In imperdiet. Nunc lectus neque, commodo eget, porttitor quis, fringilla quis, purus.
iabbrev lorem8 Duis sagittis dignissim eros. In sit amet lectus. Fusce lacinia mauris vitae nisl interdum condimentum. Etiam in magna ac nibh ultrices vehicula. Maecenas commodo facilisis lectus. Praesent sed mi. Phasellus ipsum. Donec quis tellus id lectus faucibus molestie. Praesent vel ligula. Nam venenatis neque quis mauris. Proin felis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam quam. Nam felis velit, semper nec, aliquam nec, iaculis vel, mi. Nullam et augue vitae nunc tristique vehicula. Suspendisse eget elit. Duis adipiscing dui non quam.
iabbrev lorem9 Duis posuere tortor sit amet est iaculis egestas. Ut at magna. Etiam dui nisi, blandit quis, fermentum vitae, auctor vel, sem. Cras et leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, odio eu porttitor adipiscing, ante elit tristique tortor, sit amet malesuada tortor nisi sit amet neque. Praesent rhoncus eros non velit. Pellentesque mattis. Sed sit amet ante. Mauris ac nibh eget risus volutpat tempor. Praesent volutpat sollicitudin dui. Sed in tellus id urna viverra commodo. Vestibulum enim felis, interdum non, sollicitudin in, posuere a, sem. Cras nibh.
