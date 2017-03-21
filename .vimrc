"Set color scheme to desert
colorscheme desert

" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
"set nobackup
" スワップファイルを作らない
"set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
"set visualbell t_vb=
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
if has('gui') || has('xterm_clipboard')
    set clipboard+=unnamed
endif
set clipboard=unnamedplus

" java highlight
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"JAVA自動補完(javacomplete)
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo



"[JAVA] :Makeでコンパイル
autocmd FileType java :command! Make call s:Make()
function! s:Make()
    :w
    let path = expand("%")
    let syn = "javac ".path
    let dpath = split(path,".java$")
    let ret = system(syn)
    if ret == ""
        :echo "=======\r\nCompile Success"
    else
        :echo "=======\r\nCompile Failure\r\n".ret 
    endif
endfunction

"[JAVA] :Doでコンパイル後のファイルを実行 
autocmd FileType java :command! Do call s:Do()
function! s:Do()
    let path = expand("%")
    let dpath = split(path,".java$")
    let syn = "java ".dpath[0]
    let ret = system(syn)
    :echo "=======\r\n実行結果:\r\n".ret
endfunction

"[JAVA] :Exeでコンパイルしてから実行
autocmd FileType java :command! Exe call s:Javac()
function! s:Javac()
    :w
    let path = expand("%")
    let syn = "javac ".path
    let dpath = split(path,".java$")
    let ret = system(syn)
    if ret == ""
        :echo "=======\r\nCompile Success"
        let syn = "java ".dpath[0]
        let ret = system(syn)
        :echo "=======\r\n実行結果:\r\n".ret
    else
        :echo "=======\r\nCompile Failure\r\n".ret
    endif
endfunction


autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>
