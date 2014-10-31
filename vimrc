"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Not bothered about vi compatibility
" This must be first, because it changes other options as side effect
set nocompatible
" set term=ansi

" this is a tpope plugin for normalizing vim
" including this here should run it before vimrc to allow overrides
" runtime! plugin/sensible.vim


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" tpope
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-afterimage'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-dispatch'

" Language agnostic
Bundle 'myusuf3/numbers.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'godlygeek/tabular'
Bundle 'AndrewRadev/switch.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'tjennings/git-grep-vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DirDiff.vim'
Bundle 'junegunn/goyo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Shougo/unite.vim'
Bundle 'schickling/vim-bufonly'
Bundle 'kana/vim-textobj-indent'
" Bundle 'basyura/unite-rails' remove until i've used unite for a while
" Bundle 'mmai/wikilink' this is breaking open from location list

" Ruby
Bundle 'skalnik/vim-vroom'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'danchoi/ri.vim'

" Other languages
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'groenewege/vim-less'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/vim-handlebars'
Bundle 'fatih/vim-go'
Bundle 'chrisbra/csv.vim'
Bundle 'dag/vim2hs.git'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-pandoc/vim-pandoc'
" Bundle 'Neurogami/mirah-vim'
" Bundle 'guns/vim-clojure-static'
" Bundle 'guns/paredit'
" Bundle 'bitc/vim-hdevtools'

" Colours
Bundle 'ciaranm/inkpot'
Bundle 'vim-scripts/peaksea'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" more secure
set modelines=0

" copy the previous indentation on autoindenting
" set copyindent

" dont autofold on start or load
" set foldlevelstart=99

" shows all options in edit wild mode
set wildmode=list:longest

" increase command history and undo
set history=1000
set undolevels=1000

" show the $ at the end of word changes etc
set cpoptions+=$

set number

" search highlights on, and dynamic searching
" set hlsearch

" These two options, when set together, will
" make /-style searches case-sensitive only
" if there is a capital letter in the search
" expression. *-style searches continue to
" be consistently case-sensitive.
set ignorecase
" set gdefault

set cursorline
set colorcolumn=80
" set ttyfast

" no old messy files
set nobackup
set noswapfile
set nowb

" allow hiding buffers with pending changes
set hidden

" defaults
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set clipboard=unnamed

" save undo history in file
set undofile
set undodir=~/.cache/vim/undo

" Look for the file in the current directory,
" then south until you reach home.
"set tags=tags;~/
" add the tag file generated by ctag-bundler
set tags+=gems.tags

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc,.vimrc source $MYVIMRC

" handle long lines
set nowrap
set textwidth=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't use Ex mode, use Q for formatting
map Q gq

" clear search buffer when hitting return
" this is mapped to ctrl l in sensible
" but is is a good key to use for something
nnoremap <silent> <leader><space> :set nolist!<cr>

" dont use cursor keys!
nnoremap <up> <nop>
nnoremap <down> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Use the arrows to something usefull
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" makes j and k work the way you expect
nnoremap j gj
nnoremap k gk

" make ; do the same thing as :
nnoremap ; :

"set formatoptions=qrn1
" set colorcolumn=80
" augroup vimrc_autocmds
"   autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"   autocmd BufEnter * match OverLength /\%80v.*/
" augroup END

" insert a hash rocket with <c-l>
imap <C-r> <space>=><space>

" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" avoid pressing F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Regenerate ctags
map <leader>c :! ctags --tag-relative -R --exclude=.git --links=no --languages=-javascript,sql<cr>
map <leader>C :! tagundle<cr>

" map leader-W to strip white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" map leader-H to convert to 1.9 hashs
nnoremap <leader>H :%s/:\(\w\+\)\(\s*\)=>\(\s*\)/\1: /gc<cr>
vnoremap <leader>H :s/:\(\w\+\)\(\s*\)=>\(\s*\)/\1: /gc<cr>

" map leader-G to convert to 1.8 hashs
nnoremap <leader>G :%s/\(\w\+\):\(\s\+\)/:\1 => /gc<cr>
vnoremap <leader>G :s/\(\w\+\):\(\s\+\)/:\1 => /gc<cr>

" Open files with <leader>f
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_default_opts = '-iR'''
call unite#custom_source('file_rec,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'tmp/',
      \ 'shared/',
      \ 'assets/',
      \ 'bin/',
      \ 'node_modules',
      \ ], '\|'))

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=files -quick-match buffer<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank -start-insert history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>
" nnoremap <leader>m :<C-u>Unite -start-insert file_mru<cr>

nnoremap <leader>B :BuffergatorOpen<cr>

" ri.vim remaps
nnoremap <leader>ri :call ri#OpenSearchPrompt(0)<cr> " horizontal split
nnoremap <leader>RI :call ri#OpenSearchPrompt(1)<cr> " vertical split
nnoremap <leader>RK :call ri#LookupNameUnderCursor()<cr> " keyword lookup

map <leader>gr :e config/routes.rb<cr>
map <leader>gg :e Gemfile<cr>

" Show the current routes in the split
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 100 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! bundle exec rake -s routes
  " Size window to number of lines (1 plus rake output length)
  :exec ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map <leader>gR :call ShowRoutes()<cr>

function! EditWiki()
  if isdirectory(expand("$HOME/wiki"))
    if filereadable(expand("$HOME/wiki/home.md"))
      :edit $HOME/wiki/home.md
    endif
  endif
endfunction
map <leader>gw :call EditWiki()<cr>

map <leader>e :edit %%
" map <leader>v :view %%

" reselect the text that was just pasted
nnoremap <leader>v V`]

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Run this file
let g:vroom_map_keys = 0
silent! map <unique> <leader>t :VroomRunTestFile<CR>
silent! map <unique> <leader>T :VroomRunNearestTest<CR>

nnoremap <leader>p :set paste!<cr>

nnoremap <leader>q gqip
nmap <leader>m :make<cr>:copen<cr>

" Compatible with ranger 1.4.2 through 1.6.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RagerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unused mappings ATM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fold html tag
"nnoremap <leader>ft Vatzf

" double j for escape
"inoremap jj <ESC>

" use tab to move around brackets
"nnoremap <tab> %
"vnoremap <tab> %

" Close the current buffer
"map <leader>bd :bd<cr>

if has("autocmd")
  autocmd QuickFixCmdPost *grep* cwindow

  augroup vimrcEx
    autocmd!

    " what does this do?
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
  augroup END

  augroup vimrc-auto-mkdir
    autocmd!
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
    function! s:auto_mkdir(dir, force)
      if !isdirectory(a:dir) && (a:force || input("'".a:dir."' does not exist. Create? [y/N]") =~? '^y\%[es]$')
        call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
      endif
    endfunction
  augroup END

  augroup FTOptions
    autocmd!

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Ruby
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    autocmd BufNewFile,BufRead Rakefile,*.rake,*.pill,Capfile,Gemfile,config.ru,Guardfile setfiletype ruby
    autocmd BufNewFile,BufRead *.scss.erb setfiletype scss.eruby
    autocmd BufNewFile,BufRead *.js.erb setfiletype javascript.eruby
    autocmd BufNewFile,BufRead *.coffee.erb setfiletype coffeescript.eruby
    autocmd BufNewFile,BufRead *.html.erb setfiletype html.eruby
    autocmd BufNewFile,BufRead *.ruby,*.html,*.css,*.js,*.scss,*.less setlocal ts=2 sts=2 sw=2 expandtab

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Other languages
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    autocmd BufNewFile,BufRead *.mustache set syntax=mustache
    autocmd BufNewFile,BufRead *.ol setfiletype lisp
    autocmd BufReadPost fugitive://* set bufhidden=delete
    autocmd BufNewFile,BufRead *.md,*.markdown,README,*.txt set spell
    autocmd BufNewFile,BufRead *.jst set syntax=eruby
    autocmd BufNewFile,BufRead *.jst.tpl set syntax=jst
    autocmd BufRead,BufNewFile *.wisp set ft=wisp
    autocmd FileType wisp call PareditInitBuffer()
    autocmd BufNewFile,BufRead *.go setlocal ts=2 sts=2 sw=2 noexpandtab
    autocmd FileType go autocmd BufWritePre <buffer> Fmt
    autocmd FileType go set makeprg=go\ build\ ./...
    autocmd BufNewFile,BufRead *.hs setlocal ts=2 sts=2 sw=2 expandtab

    autocmd FileType markdown nmap <leader>m :%!kramdown --no-auto-ids<cr>
    autocmd FileType markdown vmap <leader>m :!kramdown --no-auto-ids<cr>

    function! s:unite_settings()
      " Play nice with supertab
      let b:SuperTabDisabled=1
      " Enable navigation with control-j and control-k in insert mode
      imap <buffer> <C-j> <Plug>(unite_select_next_line)
      imap <buffer> <C-k> <Plug>(unite_select_previous_line)
      nmap <buffer> <ESC> <Plug>(unite_exit)
    endfunction
    autocmd FileType unite call s:unite_settings()
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Omnifunc
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    autocmd FileType ruby,eruby silent! setlocal omnifunc=rubycomplete#Complete
    autocmd FileType javascript silent! setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html silent! setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css,scss,less silent! setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml silent! setlocal omnifunc=xmlcomplete#CompleteTags

    autocmd FileType javascript nmap <leader>j :%!js-beautify --type=js -j -p -q -B -s 2 -f -<cr>
    autocmd FileType javascript vmap <leader>j  :!js-beautify --type=js -j -p -q -B -s 2 -f -<cr>
    autocmd FileType css,scss,less nmap <leader>j :%!js-beautify --type=css -j -q -p -B -s 2 -f -<cr>
    autocmd FileType css,scss,less vmap <leader>j  :!js-beautify --type=css -j -q -p -B -s 2 -f -<cr>
    autocmd FileType html,eruby nmap <leader>j :%!js-beautify --type=html -j -p -q -B -s 2 -f -<cr>
    autocmd FileType html,eruby vmap <leader>j  :!js-beautify --type=html -j -p -q -B -s 2 -f -<cr>
    autocmd FileType ruby nnoremap <leader>l :SyntasticCheck rubylint rubocop<cr>

    autocmd FileType haskell nnoremap <buffer> <leader>j :%!stylish-haskell<cr>
  augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
set encoding=utf-8
set t_Co=16

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map for ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>a :Ack 
nnoremap <leader>s :GitGrep 
nnoremap <leader>v :TagbarToggle<cr>

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_mode_map = { 'mode': 'passive',
      \ 'active_filetypes': ['ruby', 'javascript', 'css', 'hmtl', 'scss', 'less', 'c', 'h', 'go', 'haskell'],
      \ 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_ruby_checkers=['mri']
let g:syntastic_aggregate_errors=1
let g:syntastic_check_on_open=1

let g:buffergator_suppress_keymaps = 1
let g:slime_target = "tmux"
let g:airline_detect_whitespace=2 "icon only

" this is for the switch plugin
nnoremap - :Switch<cr>

let g:paredit_leader = '\'

" Goyo
function! s:goyo_before()
  silent !tmux set status off
  set noshowmode
  set noshowcmd
endfunction

function! s:goyo_after()
  silent !tmux set status on
  set showmode
  set showcmd
endfunction

let g:goyo_callbacks = [function('s:goyo_before'), function('s:goyo_after')]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display after bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termtrans=1
let g:solarized_termcolors=16
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
colorscheme solarized

if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
