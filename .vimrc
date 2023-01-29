" NeoBundle setting
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neosnippet-snippets.git'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
"NeoBundle 'basyura/unite-rails'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'Shougo/vimproc.git'
"NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'thinca/vim-ref'
NeoBundle 'kana/vim-operator-user.git'
NeoBundle 'osyo-manga/vim-operator-search' " depend on vim-operator-user
"NeoBundle 'kana/vim-textobj-function.git'
"NeoBundle 'thinca/vim-textobj-function-javascript.git'
"NeoBundle 't9md/vim-textobj-function-ruby.git'
"NeoBundle 'yomi322/vim-operator-suddendeath.git'
"NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'git@github.com:slim-template/vim-slim.git'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'motemen/git-vim'
"NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'kmdsbng/vim-ruby-eval'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-endwise' " def hoge<CR>すると、endを保管してくれたりする。ifとかも対応。
"NeoBundle 'tpope/vim-rails'
NeoBundle 'thinca/vim-visualstar' " 選択範囲の文字列で検索する
if version >= 730
  NeoBundle 'Lokaltog/vim-easymotion'
endif
NeoBundle 'othree/html5.vim'

"------------------------------------
" languages
"------------------------------------
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle "elixir-lang/vim-elixir"

"NeoBundle 'tpope/vim-haml'
"NeoBundle 'vim-coffee-script'
"NeoBundle 'mattn/zencoding-vim' " move to emmet.vim
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'kana/vim-textobj-jabraces'
NeoBundle 'kana/vim-textobj-lastpat'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'tyru/open-browser.vim'
if version >= 730 " 適当
  NeoBundle 'osyo-manga/vim-over'
end
NeoBundle 'kien/ctrlp.vim'
" いつでもどこでも Vim から :help する http://mattn.kaoriya.net/software/vim/20140527210100.htm
NeoBundle 'mattn/ctrlp-vimhelpjp'
NeoBundle 'tyru/capture.vim'
"NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'vim-scripts/str2numchar.vim'

"------------------------------------
" colorschemes
"------------------------------------
NeoBundle 'sjl/badwolf'
"NeoBundle 'morhetz/gruvbox'
"NeoBundle 'altercation/solarized'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'jonathanfilip/vim-lucius'
"NeoBundle 'google/vim-colorscheme-primary'
NeoBundle 'whatyouhide/vim-gotham'

"------------------------------------
" languages
"------------------------------------
NeoBundle "rhysd/vim-crystal"
NeoBundle "pangloss/vim-javascript"
NeoBundle 'mxw/vim-jsx'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'rhysd/vim-crystal'
NeoBundle 'ekalinin/Dockerfile.vim'

NeoBundle 'https://github.com/leafgarland/typescript-vim.git'
NeoBundle 'https://github.com/clausreinke/typescript-tools.vim'

NeoBundle 'prabirshrestha/async.vim'
NeoBundle 'prabirshrestha/vim-lsp'
NeoBundle 'prabirshrestha/asyncomplete.vim'
NeoBundle 'prabirshrestha/asyncomplete-lsp.vim'
NeoBundle 'natebosch/vim-lsc'
let g:lsp_async_completion = 1
let g:lsp_diagnostics_enabled = 0
"let g:lsp_log_verbose = 1
"let g:lsp_log_file = expand('~/vim-lsp.log')
"let g:asyncomplete_log_file = expand('~/asyncomplete.log')

NeoBundle 'w0rp/ale'

call neobundle#end()


filetype plugin indent on

NeoBundleCheck

" syntax optionslet html_no_rendering = 1 " disable html rendering on Vim

let mapleader = ","


" add plugin path
set runtimepath+=$HOME/dotfiles/_vim/ninsatu.vim

let g:EasyMotion_do_mapping = 0 "Disable default mappings
nmap s <Plug>(easymotion-s2)
omap / <Plug>(easymotion-tn)



" options {{{
set backspace=2         " allow backspacing over everything in insert mode
set viminfo='20,\"1000  " read/write a .viminfo file, don't store more
                        " than 1000 lines of registers
set wildmode=list:longest " 補完時、候補を全てを表示して、候補の共通部分の最大文字数まで補完しておく
set complete=.,w,b,u,k
set wildmenu            " command-line completion operates in an enhanced mode.
set history=1000        " keep 1000 lines of command line history
set ruler               " show the cursor position all the time
set showmatch           " have your matching brackets wink at you. ちょっと気持ち悪いけど、結構便利
set laststatus=2        " always show status bar
"set cursorcolumn " 選択列を目立たせる。重いから無効にした
"set cursorline " 選択行を目立たせる

set ttyfast             " 高速ターミナル接続を行う
set lazyredraw          " コマンド実行中は再描画しない

" タイムアウト設定
set notimeout      " mapはタイムアウトなし(いつまでもまつ)
set ttimeout       " keycodeはタイムアウトあり
set timeoutlen=100 " タイムアウト時間は0.1sec

"set t_Co=256 " たぶんコメントアウトしてても問題ない。ターミナルが256色にならなかったら試してみる

set hlsearch incsearch
set number
set autoindent
set updatecount=0
set shiftwidth=2 softtabstop=2 expandtab
set list " 空白文字を見えるように
set listchars=tab:<-,trail:-,extends:<,precedes:> " listがonのとき、表示する文字
set visualbell t_vg= " visualbell無効
set scrolloff=5 " スクロール時、ウインドウの上下5行まで行くとスクロールするように
set ambiwidth=double
set report=1 " 1箇所以上変更されたら「n行変更しました」みたいになる
"set statusline=%{SyntasticStatuslineFlag()}[%n%{bufnr('$')>1?'/'.bufnr('$'):''}%{winnr('$')>1?':'.winnr().'/'.winnr('$'):''}]\ %<\ %f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%c\ %=%{g:HahHah()}
set statusline=[%n%{bufnr('$')>1?'/'.bufnr('$'):''}%{winnr('$')>1?':'.winnr().'/'.winnr('$'):''}]\ %<\ %f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%c\ %=%{g:HahHah()}
" set statusline=%{SyntasticStatuslineFlag()}[%n%{bufnr('$')>1?'/'.bufnr('$'):''}%{winnr('$')>1?':'.winnr().'/'.winnr('$'):''}]\ %<\ %f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%c\

set grepprg=ack " change grep program to ack

"set colorcolumn=120 " 基準列表示
set textwidth=0 " 1行サイズを設定しない(自動で折り返さない)

set pastetoggle=<F12>

set lazyredraw ttyfast " 高速化。
set showbreak=+++\     " 折り返し行に+++を表示

" 行末以降にカーソル移動許可＆ペーストは行末にしかできないように (Hack #195)
set virtualedit=all
if has('virtualedit') && &virtualedit =~# '\<all\>'
  nnoremap <expr> <SID>($-if-right-of-$)  (col('.') >= col('$') ? '$' : '')
  nnoremap        <SID>(noremap-p)        p
  nnoremap        <SID>(yankring-p)        :<C-U>YRPaste 'p'<CR>
  nmap p <SID>($-if-right-of-$)<SID>(noremap-p)
endif

" crontab編集するとエラーになるのの対策
set backupskip=/tmp/*,/private/tmp/*
" }}}

set nobackup " backupファイルを作成しない


" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  "autocmd BufRead *.txt set tw=78

  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

"if has("cscope")
"   set csprg=/usr/bin/cscope
"   set csto=0
"   set cst
"   set nocsverb
"   " add any database in current directory
"   if filereadable("cscope.out")
"      cs add cscope.out
"   " else add database pointed to by environment
"   elseif $CSCOPE_DB != ""
"      cs add $CSCOPE_DB
"   endif
"   set csverb
"endif

map <silent> sy :call YanktmpYank()<CR><ESC>
map <silent> sp :call YanktmpPaste_p()<CR><ESC>
map <silent> sP :call YanktmpPaste_P()<CR><ESC>
map <silent> sP :call YanktmpPaste_P()<CR><ESC>
nnoremap x "_x
nnoremap X "_X
nnoremap j gj
nnoremap J gJ
nnoremap k gk
nnoremap Q :QuickRun<CR>
nnoremap e :w<CR>
nnoremap <F2> :w<CR>
vnoremap <F2> <ESC>:w<CR>
inoremap <f2> <ESC>:w<CR>
nnoremap <F3> :w<CR>
vnoremap <F3> <ESC>:w<CR>
inoremap <f3> <ESC>:w<CR>
" HTMLタグの内容の前後に改行を入れる
nnoremap To dithcit<CR><CR><ESC>kpvit=
inoremap <C-D> <C-P>

nnoremap <C-K> :RubyEval<CR>
inoremap <C-K> <ESC>:RubyEval<CR>

" 以下、使ってなかったら削除する
"inoremap <C-O> <ESC>o
"inoremap <C-E> <ESC>A
"inoremap <C-R>r <C-R>"
"inoremap <C-R><C-R> <C-R>"
"inoremap <lt>%e <%e  %><esc>hhi
"inoremap <lt>%E <%E  %><esc>hhi
"inoremap <lt>%= <%=  %><esc>hhi
"inoremap <lt>%<Space> <%  %><esc>hhi
"inoremap <lt>%$ <%$  /%><esc>hhhi

ab __curdir File.dirname(__FILE__)

syntax enable

let MRU_Max_Entries=300
let MRU_Window_Height=50

" search
vnoremap / <Esc>/\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
vnoremap ? <Esc>?\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
"vnoremap { "zdi{<C-R>z}<ESC>
"vnoremap [ "zdi[<C-R>z]<ESC>
"vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" source code format conversion maps
vnoremap <c-c><c-r>  :s/\(\l\)\(\u\)/\1_\l\2/g<cr>
vnoremap <c-c><c-j>  :s/\(\l\)_\(\l\)/\1\u\2/g<cr>

" LookupFile
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_AllowNewFiles=0

"auto cd
au BufEnter * execute ":lcd " . expand("%:p:h") 


"grep by last search word
nmap <unique> gg/ :exec ':vimgrep /' . getreg('/') . '/j %\|cwin'<CR>

" cd
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>') 
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif

    if a:bang == ''
        pwd
    endif
endfunction
nnoremap <silent> <Space>cd :<C-u>CD<CR>


nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>

" Load .gvimrc after .vimrc edited at GVim.
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC<CR>


" <Space>j, <Space>k でスクロールアップ/ダウン
noremap <Space>j <C-f>
noremap <Space>k <C-b>

" neocomplcache
"let g:NeoComplCache_EnableAtStartup = 1


command! OpenTempfile :edit `=tempname()`
"command! OT :edit `=tempname()`
command! OT :edit `=system('ruby -e "f=ARGV[0];puts File.dirname(f) + %Q(/) + Time.now.strftime(%Q(%y%m%d_%H%M)) + %Q(_) + File.basename(f)" ' . tempname())`

" VimShell alias
command! VS :VimShellPop

nnoremap <silent> <Space>a :Ref alc <C-r><C-w><C-m><C-w>_

" zencoding
let g:user_zen_settings = {
      \  'php' : {
      \    'extends' : 'html',
      \    'filters' : 'c',
      \  },
      \  'xml' : {
      \    'extends' : 'html',
      \  },
      \  'haml' : {
      \    'extends' : 'html',
      \  },
      \}

"" vim-rails custom command
"autocmd User Rails silent! Rnavcommand routes config -glob=*.*  -suffix= -default=routes.rb
"autocmd User Rails silent! Rnavcommand db config -glob=*.*  -suffix= -default=database.yml


" quickfix設定
nmap <F11> :make -c %<CR>

" nnoremap <F2> :LspNextError<CR>
nnoremap <F2> <Plug>(ale_next_wrap)
nnoremap <C-B> :LspDefinition<CR>


" コンプリーション設定
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

" yankringのpへのマッピングを無効にする
let g:yankring_paste_n_akey = ''

" : をcommand line windowを開くようにする Hack #161
nnoremap <sid>(command-line-enter) q:
xnoremap <sid>(command-line-enter) q:
nnoremap <sid>(command-line-norange) q:<C-u>
nmap :  <sid>(command-line-enter)
xmap :  <sid>(command-line-enter)

autocmd CmdwinEnter * call s:init_cmdwin()
function! s:init_cmdwin()
  nnoremap <buffer> q :<C-u>quit<CR>
  nnoremap <buffer> <TAB> :<C-u>quit<CR>
  inoremap <buffer><expr><CR> pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
  inoremap <buffer><expr><C-h> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"
  inoremap <buffer><expr><BS> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"
  " Completion.
  inoremap <buffer><expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  startinsert!
endfunction

" / をsearch line windowを開くようにする Hack #161 を参考に
nnoremap <sid>(search-line-enter) q/
xnoremap <sid>(search-line-enter) q/
nmap /  <sid>(search-line-enter)
xmap /  <sid>(search-line-enter)
nnoremap <sid>(reverse-line-enter) q?
xnoremap <sid>(reverse-line-enter) q?
nmap ?  <sid>(reverse-line-enter)
xmap ?  <sid>(reverse-line-enter)

" ,t で commant-t
nmap <leader>t :CommandT<CR>
nmap <leader>T :CommandTFlush<CR>:CommandT<CR>

" augroup
if has('persistent_undo')
  set undodir=$HOME/.vimundo
  augroup vimrc-undofile
    autocmd!
    autocmd BufReadPre ~/* setlocal undofile
  augroup END
endif

augroup UjihisaRSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END

" coffeescript filetype
au BufNewFile,BufRead *.coffee	setf coffee

" md as markdown, instead of modula2
"autocmd MyAutoGroup BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
au BufNewFile,BufRead *.md	set filetype=markdown


""" quickrun
let g:quickrun_config = {}
let g:quickrun_config['ruby.rspec'] = {'command': 'rspec', 'cmdopt': '-cfd'}
let g:quickrun_config['ruby.rspecsimple'] = {'command': 'rspec', 'cmdopt': '-c'}
"let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -bp %s']}
let g:quickrun_config['coffee'] = {'command' : 'coffee'}

" 親ディレクトリにtagsファイルを参照する
if has('path_extra')
  set tags+=gems.tags;
endif

" 定義元へのジャンプを新しいウインドウで見るようにするために、
" mapを上書きしたが、同様のことが <C-W>] でできたので、コメントアウト
"nnoremap <C-]> "nyiw:stj <C-R>n<CR>

" Haskell用設定
augroup MyLsp
  autocmd FileType haskell setlocal omnifunc=lsp#complete

  if executable('hie')
      au User lsp_setup call lsp#register_server({
        \ 'name': 'hie',
        \ 'cmd': {server_info->['hie']},
        \ 'whitelist': ['haskell'],
        \ })
  endif

  au FileType haskell nmap <leader>R <plug>(lsp-rename)
  au FileType haskell nmap <leader>D <plug>(lsp-definition)
  au FileType haskell nmap <leader>r <plug>(lsp-references)
  au FileType haskell nmap <leader>d <plug>(lsp-document-symbol)
  au FileType haskell nmap <leader>w <plug>(lsp-workspace-symbol)
augroup end

"------------------------------------
" 新規ファイルを開いたタイミングで、テンプレートを表示する
" http://d.hatena.ne.jp/babie/20110114/1294976877
"------------------------------------
autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl


"------------------------------------
" <Space>mでファイル先頭にマジックコメントを挿入
"------------------------------------
function! MagicComment()
  return "# -*- encoding: ".&encoding." -*-"
endfunction
nnoremap <Space>m maggi<CR><ESC>gg:let @a=MagicComment()<CR>"aP`a

"------------------------------------
" <Space>bで、gitブランチ名を挿入
"------------------------------------
function! GitBranchName()
  let l = system('git symbolic-ref --short HEAD')
  let l = substitute(l, '\n$', '', '')
  return l
endfunction
nnoremap <Space>b i[]<ESC>:let @a=GitBranchName()<CR>"aPl

" coffeescript保存時に自動でコンパイル
"autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow


""" Unite.vim
let g:unite_source_file_mru_time_format = ''
"let g:unite_enable_start_insert = 1
let g:unite_source_file_mru_ignore_pattern='.*\/$\|.*Application\ Data.*'
nnoremap <silent> <Leader>r  :<C-u>Unite -default-action=vsplit -no-quit file_mru<CR>
nnoremap <silent> <Leader>f :<C-u>Unite -default-action=vsplit -no-quit -buffer-name=files file_rec<CR>
nnoremap <silent> <Leader>b :<C-u>Unite -default-action=vsplit -no-quit bookmark<CR>
nnoremap <Leader>f  :<C-u>Unite file_rec -default-action=vsplit -no-quit -input=
"nnoremap <silent> <Leader>g :<C-u>Unite -default-action=vsplit -no-quit grep<CR>
nnoremap <silent> <Leader>n :<C-u>Unite -default-action=vsplit -no-quit grep:~/note/:-iR file:~/note<CR>
nnoremap <silent> <Leader>u  :<C-u>Unite -default-action=vsplit -no-quit -buffer-name=files -no-quit buffer file_mru bookmark<CR>
nnoremap <silent> <Leader>m  :<C-u>Unite file_mru -default-action=vsplit -no-quit<CR>
"nnoremap <silent> <Leader>r  :<C-u>Unite rails/view rails/controller rails/model rails/helper<CR>
nnoremap <silent> <Leader>r :<C-u>UniteResume -no-quit -default-action=vsplit<CR>
nnoremap <silent> <Leader>/ :<C-u>Unite -no-quit line<CR>
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  "imap <buffer> jj <Plug>(unite_insert_leave)
  "imap <buffer> <C-j> <Plug>(unite_exit)
  "imap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <C-o> <Plug>(unite_insert_leave):<C-u>call unite#mappings#do_action('above')<CR>
  "nmap <buffer> E <tab>avsplit<cr><c-w><c-p>:q<cr>\\r
endfunction

" traverse project directories
nnoremap <silent> <Leader>t  :call <SID>unite_project('-default-action=vsplit', '-no-quit', '-buffer-name=files')<CR>
nnoremap <silent> <Leader>tf  :call <SID>unite_project('-default-action=vsplit', '-no-quit', '-buffer-name=files')<CR>
nnoremap <silent> <Leader>tg  :call <SID>unite_project_grep('-default-action=vsplit', '-no-quit', '-buffer-name=files')<CR>

function! s:unite_project(...)
  let opts = (a:0 ? join(a:000, ' ') : '')
  let dir = unite#util#path2project_directory(expand('%'))
  execute 'Unite ' opts ' file_rec:' . dir
endfunction

function! s:unite_project_grep(...)
  let opts = (a:0 ? join(a:000, ' ') : '')
  let dir = unite#util#path2project_directory(expand('%'))
  execute 'Unite ' opts ' grep:' . dir . ':-iR'
endfunction


" 数値文字参照に変換
vmap <silent> sn :Str2NumChar<CR>
" 16進文字列に変換
vmap <silent> sh :Str2HexLiteral<CR>

"" vimfiler : NERDTree使うようにしたのでコメントアウト
"let g:vimfiler_safe_mode_by_default = 0
"let g:vimfiler_as_default_explorer = 1

" URLエンコード、デコード
function s:URLEncode()
  let l:line = getline('.')
  let l:encoded = AL_urlencode(l:line)
  call setline('.', l:encoded)
endfunction

function s:URLDecode()
  let l:line = getline('.')
  let l:encoded = AL_urldecode(l:line)
  call setline('.', l:encoded)
endfunction

command! -nargs=0 -range URLEncode :<line1>,<line2>call <SID>URLEncode()
command! -nargs=0 -range URLDecode :<line1>,<line2>call <SID>URLDecode()

" errormarker.vim 設定 # syntastic使うようにしたので使ってない
"let g:errormarker_errortext = '!!'
"let g:errormarker_worningtext = '??'
"let g:errormarker_errorgroup = 'Error'
"let g:errormarker_worninggroup = 'Warning'

if !exists('g:flymake_enabled')
  let g:flymake_enabled = 1
  "autocmd BufWritePost *.rb,*.pl,*.pm silent make
  "au BufWritePost *.haml,*.rb,*.pm,*.pl,*.t,*.js make -c %
endif

"autocmd FileType javascript :compiler node
"autocmd FileType javascript :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\"

" <C-[>の誤爆を防止する (Hack #240)
imap <C-@> <C-[>

source ~/.vimrc_local

" gist-vim setting
let g:gist_browser_command = 'w3m %URL%'

" neosnippet setting
imap <C-l> <Plug>(neosnippet_expand_or_jump)
smap <C-l> <Plug>(neosnippet_expand_or_jump)
let g:neosnippet#snippets_directory = '~/.neosnippet/'

" backslash to expand only when it's expandable
imap <expr> <Bslash> (pumvisible() && neosnippet#expandable() % 2 == 1) ?
      \ "\<Plug>(neosnippet_expand)" : '\'

imap <C-\> <Plug>(neosnippet_jump)
smap <C-\> <Plug>(neosnippet_jump)
nmap <C-\> a<C-\>

" Installation check.
if neobundle#exists_not_installed_bundles()
 echomsg 'Not installed bundles : ' .
       \ string(neobundle#get_not_installed_bundle_names())
 echomsg 'Please execute ":NeoBundleInstall" command.'
 "finish
endif

" suddendeath
map X <Plug>(operator-suddendeath)

" テキストオブジェクト範囲内検索 
" 重要:なんか動いてない
nmap <Space>s <Plug>(operator-search)
nmap <Space>/ <Plug>(operator-search)if


"------------------------------------
" evervim設定
"------------------------------------
let g:evervim_devtoken='S=s1:U=edab:E=14992780a36:C=1423ac6de39:P=1cd:A=en-devtoken:V=2:H=b7e6901be80d6b17af6d038391c445b3'
nnoremap <silent> ,el :<C-u>EvervimNotebookList<CR>
nnoremap <silent> ,eT :<C-u>EvervimListTags<CR>
nnoremap <silent> ,en :<C-u>EvervimCreateNote<CR>
nnoremap <silent> ,eb :<C-u>EvervimOpenBrowser<CR>
nnoremap <silent> ,ec :<C-u>EvervimOpenClient<CR>
"nnoremap ,es :<C-u>EvervimSearchByQuery<SPACE>
"nnoremap <silent> ,et :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done -tag:someday<CR>
nnoremap <silent> ,es :<C-u>EvervimSearchByQuery<SPACE>tag:snippet<CR>
nnoremap <silent> ,em :<C-u>EvervimSearchByQuery<SPACE>tag:mainte<CR>
let g:evervim_splitoption=''


"set runtimepath+=$HOME/my_local/repos/vimfiler

" ### git-vim default key mapping ###
" <Leader>gd  :GitDiff
" <Leader>gD  :GitDiff –cached
" <Leader>gs  :GitStatus
" <Leader>gl  :GitLog
" <Leader>ga  :GitAdd
" <Leader>gA  :GitAdd <cfile>
" <Leader>gc  :GitCommit
" <Leader>gb  :GitBlame

" 色設定

" tmux環境で背景色が黒くなってしまう問題を回避するため。
" http://superuser.com/questions/399296/256-color-support-for-vim-background-in-tmux
" ここに書いてあった。
set t_ut=

set background=dark

"colorscheme elflord
"colorscheme solarized
"colorscheme badwolf
"colorscheme monokai
"colorscheme gruvbox
"colorscheme lucius
"colorscheme primary
colorscheme gotham256

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1

" AlignPluginで日本語を使うための設定
let g:Align_xstrlen = 3

"------------------------------------
" NERDTree設定
"------------------------------------
let g:NERDTreeShowHidden=1    " hiddenファイル表示
let g:NERDTreeWinSize=60      " ウインドウ幅
let g:NERDTreeDirArrows=1     " ディレクトリ表示にArrowを使う
nnoremap <silent> <C-W><C-R> :NERDTreeToggle<CR>

" "------------------------------------
" " syntastic設定
" " https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt
" "------------------------------------
" let g:syntastic_auto_loc_list = 2 " エラーウインドウ設定
"                                   " 0:自動で開かないし閉じない
"                                   " 1:エラーがあると自動で開く。ないと閉じる
"                                   " 2: エラーがないと閉じる。自動では開かない
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
" let g:syntastic_auto_jump = 1     " エラー発生時ジャンプ設定
"                                   " 0:自動でジャンプしない
"                                   " 1:最初のissue detectedにジャンプする
"                                   " 2:最初にissue detectedがエラーの時だけジャンプする
" 
" " let g:syntastic_ruby_checkers = ['mri', 'rubocop'] " ruby checkerにrubocopを使う
" " let g:syntastic_ruby_checkers = ['rubocop'] " ruby checkerにrubocopを使う
" let g:syntastic_ruby_checkers = ['mri', 'rubocop'] " ruby checkerにrubocopを使う
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_haskell_checkers = ["hlint"]
" 
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:elm_syntastic_show_warnings = 1

" ---------------------------------------
"  ale設定
" ---------------------------------------
let g:ale_linters = { 'haskell': ['hie'], }


"------------------------------------
" 対になるdef ... end などを%で移動できるように
"------------------------------------
if !exists('loaded_matchit')
  runtime macros/matchit.vim
endif

" "------------------------------------
" " Unite-rails.vim
" "------------------------------------
" "{{{
" function! UniteRailsSetting()
"   nnoremap <buffer><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
"   nnoremap <buffer><C-H><C-H>       :<C-U>Unite rails/model<CR>
"   nnoremap <buffer><C-H>            :<C-U>Unite rails/controller<CR>
" 
"   nnoremap <buffer><C-H>c           :<C-U>Unite rails/config<CR>
"   nnoremap <buffer><C-H>s           :<C-U>Unite rails/spec<CR>
"   nnoremap <buffer><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
"   nnoremap <buffer><C-H>l           :<C-U>Unite rails/lib<CR>
"   nnoremap <buffer><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
"   nnoremap <buffer><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
"   nnoremap <buffer><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
"   nnoremap <buffer><C-H>ra          :<C-U>Unite rails/rake<CR>
"   nnoremap <buffer><C-H>h           :<C-U>Unite rails/heroku<CR>
" endfunction
" aug MyAutoCmd
"   au User Rails call UniteRailsSetting()
" aug END
" "}}}


" 最後に変更したテキストの選択
nnoremap gc '[v']
vnoremap gc :<C-u>normal gc<CR>
onoremap gc :<C-u>normal gc<CR>


" Rainbow Parentheses {{{
" au VimEnter * RainbowParenthesesActivate
" au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadSquare
" this doesn't work when using tabs.
" http://stackoverflow.com/questions/17399533/vim-plugin-rainbow-parentheses-using-tab
function! Config_Rainbow()
    call rainbow_parentheses#load(0)
    call rainbow_parentheses#load(1)
    call rainbow_parentheses#load(2)
endfunction

function! Load_Rainbow()
    call rainbow_parentheses#activate()
endfunction

augroup TastetheRainbow
    autocmd!
    autocmd Syntax * call Config_Rainbow()
    autocmd VimEnter,BufRead,BufWinEnter,BufNewFile * call Load_Rainbow()
augroup END

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
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

"let g:rbpt_colorpairs = [
"    \ ['240',  'LightGray'],
"    \ ['247',  'gray'],
"    \ ['255',  'LightGray'],
"    \ ['240',  'white'],
"    \ ['247',  'LightGray'],
"    \ ['255',  'gray'],
"    \ ['240',  'LightGray'],
"    \ ['247',  'white'],
"    \ ['255',  'LightGray'],
"    \ ['240',  'gray'],
"    \ ['247',  'LightGray'],
"    \ ['255',  'white'],
"    \ ['247',  'LightGray'],
"    \ ['240',  'gray'],
"    \ ['247',  'LightGray'],
"    \ ['None', 'white'],
"\ ]
" }}}




"" http://deris.hatenablog.jp/entry/2013/07/05/023835
"" gz で、NeoBundleで管理してるプラグインのURLをブラウザで開く。
"nnoremap gz vi':<C-u>call ExecuteWithSelectedText('OpenBrowser https://github.com/%s')<CR>
"vnoremap gz :<C-u>call ExecuteWithSelectedText('OpenBrowser https://github.com/%s')<CR>

"" visualモードで最後に選択したテキストを%sで指定してコマンドを実行する {{{
"function! ExecuteWithSelectedText(command)
"  if a:command !~? '%s'
"    return
"  endif
"
"  let reg = '"'
"  let [save_reg, save_type] = [getreg(reg), getregtype(reg)]
"  normal! gvy
"  let selectedText = @"
"  call setreg(reg, save_reg, save_type)
"  if selectedText == ''
"    return
"  endif
"
"  execute printf(a:command, selectedText)
"endfunction
"" }}}


"function! SetJiraTitleInner(
"
"function! SetJiraTitle() range
"ruby << EOF
"@buffer = VIM::Buffer.current
"puts @buffer.methods
"
"EOF
"endfunction
"
"command! -range SetJiraTitle call SetJiraTitle()


"command! -range SetJiraTitle rubydo $_ = $_.gsub(/(\w+-\d+)(\s*)$/) {|id| `jira_title_md #{id}`.chomp}



