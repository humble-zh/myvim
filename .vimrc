let mapleader=" "

" 基本配置
set nocompatible
syntax enable
syntax on
set showmode
set showcmd
" set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on

" 缩进
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set fdm=syntax

" 外观
set number
set relativenumber
"CursorLine 和 CursorColumn 分别表示当前所在的行列
"cterm 表示为原生vim设置样式，设置为NONE表示可以自定义设置。
"ctermbg 设置终端vim的背景色
"ctermfg 设置终端vim的前景色
"guibg 和 guifg 分别是设置gvim的背景色和前景色
set cursorline "高亮光标所在行
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=yellow guibg=NONE guifg=NONE
set cursorcolumn "高亮光标所在列
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=yellow guibg=NONE guifg=NONE
set textwidth=80
set wrap
" set nowrap
set linebreak
set wrapmargin=2
set scrolloff=8
set laststatus=2
set ruler

" 搜索
set showmatch
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap * *zz
noremap n nzz
noremap # #zz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER><TAB> /<TODO><CR>ca<

" 使用系统剪切板取代无名寄存器
set clipboard^=unnamed,unnamedplus

noremap <LEADER>1 :1b<CR>
noremap <LEADER>2 :2b<CR>
noremap <LEADER>3 :3b<CR>
noremap <LEADER>4 :4b<CR>
noremap <LEADER>5 :5b<CR>
noremap <LEADER>6 :6b<CR>
noremap <LEADER>7 :7b<CR>
noremap <LEADER>8 :8b<CR>
noremap <LEADER>9 :9b<CR>
noremap <LEADER>0 :10b<CR>
noremap <LEADER>h1 :set nosplitright<CR>:vsplit<CR>:1b<CR>
noremap <LEADER>h2 :set nosplitright<CR>:vsplit<CR>:2b<CR>
noremap <LEADER>h3 :set nosplitright<CR>:vsplit<CR>:3b<CR>
noremap <LEADER>h4 :set nosplitright<CR>:vsplit<CR>:4b<CR>
noremap <LEADER>h5 :set nosplitright<CR>:vsplit<CR>:5b<CR>
noremap <LEADER>h6 :set nosplitright<CR>:vsplit<CR>:6b<CR>
noremap <LEADER>h7 :set nosplitright<CR>:vsplit<CR>:7b<CR>
noremap <LEADER>h8 :set nosplitright<CR>:vsplit<CR>:8b<CR>
noremap <LEADER>h9 :set nosplitright<CR>:vsplit<CR>:9b<CR>
noremap <LEADER>h0 :set nosplitright<CR>:vsplit<CR>:10b<CR>
noremap <LEADER>j1 :set splitbelow<CR>:split<CR>:1b<CR>
noremap <LEADER>j2 :set splitbelow<CR>:split<CR>:2b<CR>
noremap <LEADER>j3 :set splitbelow<CR>:split<CR>:3b<CR>
noremap <LEADER>j4 :set splitbelow<CR>:split<CR>:4b<CR>
noremap <LEADER>j5 :set splitbelow<CR>:split<CR>:5b<CR>
noremap <LEADER>j6 :set splitbelow<CR>:split<CR>:6b<CR>
noremap <LEADER>j7 :set splitbelow<CR>:split<CR>:7b<CR>
noremap <LEADER>j8 :set splitbelow<CR>:split<CR>:8b<CR>
noremap <LEADER>j9 :set splitbelow<CR>:split<CR>:9b<CR>
noremap <LEADER>j0 :set splitbelow<CR>:split<CR>:10b<CR>
" noremap <LEADER>k1 :set nosplitbelow<CR>:split<CR>:1b<CR>
" noremap <LEADER>k2 :set nosplitbelow<CR>:split<CR>:2b<CR>
" noremap <LEADER>k3 :set nosplitbelow<CR>:split<CR>:3b<CR>
" noremap <LEADER>k4 :set nosplitbelow<CR>:split<CR>:4b<CR>
noremap <LEADER>l1 :set splitright<CR>:vsplit<CR>:1b<CR>
noremap <LEADER>l2 :set splitright<CR>:vsplit<CR>:2b<CR>
noremap <LEADER>l3 :set splitright<CR>:vsplit<CR>:3b<CR>
noremap <LEADER>l4 :set splitright<CR>:vsplit<CR>:4b<CR>
noremap <LEADER>l5 :set splitright<CR>:vsplit<CR>:5b<CR>
noremap <LEADER>l6 :set splitright<CR>:vsplit<CR>:6b<CR>
noremap <LEADER>l7 :set splitright<CR>:vsplit<CR>:7b<CR>
noremap <LEADER>l8 :set splitright<CR>:vsplit<CR>:8b<CR>
noremap <LEADER>l9 :set splitright<CR>:vsplit<CR>:9b<CR>
noremap <LEADER>l0 :set splitright<CR>:vsplit<CR>:10b<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
" iab xtime <c-r>=strftime("%Y-%m-%d %H:%M")<cr>

" markdown
noremap <LEADER>cr i## C->R 0x
noremap <LEADER>rc i## R->C 0x
noremap <LEADER>s2 i&emsp;&emsp;<ESC>
noremap <LEADER>< i ***<ESC>
noremap <LEADER>> i*** <ESC>

noremap <LEADER>len mm^w"ayew"bdi[iP2LEN4<ESC>"apgUiw"cyiw/P2MacrosDefine<CR>ko#define <ESC>"cpa (<ESC>"bpa)<ESC>'mj

" 结构体成员赋值
noremap <LEADER>s8 ^w"ayeO*(uint8_t *)pkt-><ESC>"apa = <ESC>"apa;<ESC>jdd
noremap <LEADER>s16 ^w"ayeO*(uint16_t *)pkt-><ESC>"apa = <ESC>"apa;<ESC>jdd
noremap <LEADER>s32 ^w"ayeO*(uint32_t *)pkt-><ESC>"apa = <ESC>"apa;<ESC>jdd
noremap <LEADER>ss ^w"ayeOif(<ESC>"apa) memcpy(pkt-><ESC>"apa, <ESC>"apa, P2LEN4<ESC>"apgUiwA);<ESC>jdd

function AddTitle()
    if &filetype == 'python'
        call append(0,"# -*- coding: utf-8 -*-")
        call append(1,"")
        call append(2,"'''\\")
        call append(3,"Filename: ".expand("%:t"))
        call append(4,"Description: <TODO>")
        call append(5,"Last modified: humble ".strftime("%Y-%m-%d %H:%M"))
        call append(6,"Usage:")
        call append(7,"  python3 ".expand("%:t")." <TODO>")
        call append(8,"'''")
        call append(9,"")
    elseif &filetype == 'sh'
        call append(0,"#!/bin/bash")
        call append(1,"# -*- coding: utf-8 -*-")
        call append(2,"#Filename: ".expand("%:t"))
        call append(3,"#Description: <TODO>")
        call append(4,"#Last modified: humble ".strftime("%Y-%m-%d %H:%M"))
        call append(5,"#Usage:")
        call append(6,"#  sh ".expand("%:t")." <TODO>")
        call append(7,"")
    elseif &filetype == 'cpp'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y-%m-%d %H:%M"))
        call append(3," */")
    elseif &filetype == 'c'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y-%m-%d %H:%M"))
        call append(3," */")
    elseif &filetype == 'h'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y-%m-%d %H:%M"))
        call append(3," */")
    elseif &filetype == 'md'
        echohl WarningMsg | echo "not .md file" | echohl None
    else
        echohl WarningMsg | echo "not support file to hello()" | echohl None
        return
    endif
    echohl WarningMsg | echo "Successful in adding copyright." | echohl None
endf

function UpdateTitle()
    execute '/Filename/s@:.*$@\=": ".expand("%:t")@'
    execute '/Last modified/s@:.*$@\=strftime(": humble %Y-%m-%d %H:%M")@'
    if &filetype == 'python'
        execute '/  python3 /s@3 .*py@\="3 ".expand("%:t")@'
    elseif &filetype == 'sh'
        execute '/#  sh /s@#  sh.*sh@\="#  sh ".expand("%:t")@'
    endif
    echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

function TitleDet()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ "^Filename\S*.*$"
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

function Hello()
    if &filetype == 'python'
        call TitleDet()
        call append(10,"import logging")
        call append(11,"import os")
        call append(12,"import sys")
        call append(13,"import time")
        call append(14,"")
        call append(15,"__author__ = 'humble'")
        call append(16,"")
        call append(17,"")
        call append(18,"def _usage_exit():")
        call append(19,"    print(__doc__)")
        call append(20,"    sys.exit(1)")
        call append(21,"")
        call append(22,"")
        call append(23,"def _loginit():")
        call append(24,"    _logdir = 'log'")
        call append(25,"    _datetime = time.strftime('%Y%m%d%H%M%S', time.localtime())")
        call append(26,"    if not os.path.exists(_logdir):")
        call append(27,"        os.mkdir(_logdir)")
        call append(28,"    logging.basicConfig(level=logging.DEBUG,")
        call append(29,"                        format='%(asctime)s %(filename)s' +")
        call append(30,"                        '[line:%(lineno)d] %(levelname)s %(message)s',")
        call append(31,"                        datefmt='%Y/%m/%d %H:%M:%S', filename=_logdir + '/' +")
        call append(32,"                        _datetime + os.path.basename(__file__).split('.')[0] +")
        call append(33,"                        '.log', filemode='a')")
        call append(34,"    console = logging.StreamHandler()")
        call append(35,"    console.setLevel(logging.INFO)")
        call append(36,"    # console.setLevel(logging.WARNING)")
        call append(37,"    # console.setLevel(logging.DEBUG)")
        call append(38,"    formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')")
        call append(39,"    console.setFormatter(formatter)")
        call append(40,"    logging.getLogger('').addHandler(console)")
        call append(41,"")
        call append(42,"")
        call append(43,"if __name__ == '__main__':")
        call append(44,"    # check argv")
        call append(45,"    _loginit()")
        call append(46,"    # import ipdb; ipdb.set_trace()")
        call append(47,"    logging.info('+++++++++++++++start++++++++++++++')")
        call append(48,"    logging.debug('world')")
        call append(49,"    logging.info('hello world')")
        call append(50,"    logging.warning('hello world')")
        call append(51,"    logging.error('what')")
    elseif &filetype == 'sh'
        call TitleDet()
        call append(8,"function usage(){")
        call append(9,"    echo hello")
        call append(10,"}")
        call append(11,"")
        call append(12,"usage")
    elseif &filetype == 'c'
        call TitleDet()
        call append(4,"#include <stdio.h>")
        call append(5,"#include <stdlib.h>")
        call append(6,"")
        call append(7,"static void usage(void);")
        call append(8,"")
        call append(9,"int main(int argc, char **argv)")
        call append(10,"{")
        call append(11,"    if(argc != 1){ fprintf(stderr, \"argc !=1\"); usage(); exit(1); }")
        call append(12,"")
        call append(13,"    printf(\"hello world\\n\");")
        call append(14,"    return 0;")
        call append(15,"}")
        call append(16,"")
        call append(17,"static void usage(void)")
        call append(18,"{")
        call append(19,"#define USAGE \"Usage:\\n\\")
        call append(20,"  Helloworld\\n\"")
        call append(21,"    printf(USAGE);")
        call append(22,"}")
    elseif &filetype == 'h'
        echohl WarningMsg | echo "not .h file" | echohl None
    elseif &filetype == 'h'
        echohl WarningMsg | echo "not .md file" | echohl None
    else
        echohl WarningMsg | echo "not support file to hello()" | echohl None
    endif
endf
noremap <LEADER>hello :call Hello()<CR>

function Paho()
    call TitleDet()
    call append(10,"import logging")
    call append(11,"# import json")
    call append(12,"import os")
    call append(13,"import sys")
    call append(14,"import time")
    call append(15,"import paho.mqtt.client as mqtt")
    call append(16,"from libevpower import libevpower")
    call append(17,"")
    call append(18,"__author__ = 'humble'")
    call append(19,"")
    call append(20,"")
    call append(21,"def _usage_exit():")
    call append(22,"    print(__doc__)")
    call append(23,"    sys.exit(1)")
    call append(24,"")
    call append(25,"")
    call append(26,"def _loginit():")
    call append(27,"    _logdir = 'log'")
    call append(28,"    _datetime = time.strftime('%Y%m%d%H%M%S', time.localtime())")
    call append(29,"    if not os.path.exists(_logdir):")
    call append(30,"        os.mkdir(_logdir)")
    call append(31,"    logging.basicConfig(level=logging.DEBUG,")
    call append(32,"                        format='%(asctime)s %(filename)s' +")
    call append(33,"                        '[line:%(lineno)d] %(levelname)s %(message)s',")
    call append(34,"                        datefmt='%Y/%m/%d %H:%M:%S', filename=_logdir + '/' +")
    call append(35,"                        _datetime + os.path.basename(__file__).split('.')[0] +")
    call append(36,"                        '.log', filemode='a')")
    call append(37,"    console = logging.StreamHandler()")
    call append(38,"    console.setLevel(logging.INFO)")
    call append(39,"    # console.setLevel(logging.DEBUG)")
    call append(40,"    formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')")
    call append(41,"    console.setFormatter(formatter)")
    call append(42,"    logging.getLogger('').addHandler(console)")
    call append(43,"")
    call append(44,"")
    call append(45,"def _on_connect(_client, _df, _flags, _rc):")
    call append(46,"    '''The callback for when the client receives a CONNACK response from the")
    call append(47,"    server.")
    call append(48,"    '''")
    call append(49,"    logging.debug('Connected result%s', _rc)")
    call append(50,"    logging.info('client.subscribe Message/Router/ot19')")
    call append(51,"    _client.subscribe('Message/Router/ot19')")
    call append(52,"")
    call append(53,"")
    call append(54,"def _on_message(_client, _df, _msg):")
    call append(55,"    '''The callback for when a PUBLISH message is received from the server.'''")
    call append(56,"    logging.debug('_on_message')")
    call append(57,"    logging.info(_msg.payload.decode().replace('\\'', '\\\"'))")
    call append(58,"")
    call append(59,"")
    call append(60,"def _on_publish(_client, _df, _mid):")
    call append(61,"    '''_on_publish'''")
    call append(62,"")
    call append(63,"")
    call append(64,"def _on_disconnect(_client, _df, _rc):")
    call append(65,"    '''_on_disconnect'''")
    call append(66,"    logging.debug('Mqtt disconnect && loop stop')")
    call append(67,"    _client.loop_stop()")
    call append(68,"")
    call append(69,"")
    call append(70,"if __name__ == '__main__':")
    call append(71,"    _CLIENT = mqtt.Client('<TODO>', True)")
    call append(72,"    _CLIENT.on_connect = _on_connect")
    call append(73,"    _CLIENT.on_message = _on_message")
    call append(74,"    _CLIENT.on_publish = _on_publish")
    call append(75,"    _CLIENT.on_disconnect = _on_disconnect")
    call append(76,"    _CLIENT.username_pw_set('<TODO>', '<TODO>')")
    call append(77,"    _CLIENT.connect_async(libevpower.EMQXSERVADDR, 1883, 60)")
    call append(78,"    _CLIENT.loop_start()")
    call append(79,"")
    call append(80,"    while True:")
    call append(81,"        pass")
endf

noremap <LEADER>paho :call Paho()<CR>

noremap <LEADER>t mm:call AddTitle()<CR>:w<CR>'m
noremap <LEADER>o mm:call UpdateTitle()<CR>:w<CR>'m


" 编辑
" set backup
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full

" 分屏
map \h :set nosplitright<CR>:vsplit<CR>
map \j :set splitbelow<CR>:split<CR>
map \k :set nosplitbelow<CR>:split<CR>
map \l :set splitright<CR>:vsplit<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" 美化
Plug 'mhinz/vim-startify' " vim启动显示母牛
Plug 'vim-airline/vim-airline' " 状态栏
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
" Plug 'w0ng/vim-hybrid' " 主题
Plug 'sjl/badwolf' " 主题
" Plug 'Yggdroot/indentLine' " 不想markdown自动收起超链接，故注释
Plug 'airblade/vim-gitgutter' " 直接左边显示有改动的行
" Plug 'tpope/vim-fugitive' " git快捷命令(好像跟其他插件冲突了？)
" Plug 'junegunn/gv.vim' " git快捷命令(好像跟其他插件冲突了？)
" Plug 'fholgado/minibufexpl.vim' " 这种安装方式似乎对config 'fholgado/minibufexpl.vim' 无效
" Plug 'vim-scripts/a.vim' " 写代码时space+is就冲突了<LEADER>is，所以停用掉
Plug 'vim-scripts/winmanager' " 窗口管理

Plug 'terryma/vim-multiple-cursors' " <C-n> 选中多个相同单词一起修改
Plug 'brooth/far.vim' " 在项目中替换多文件内容
Plug 'easymotion/vim-easymotion' " 强化版检索式移动 <LEADER>w
Plug 'itchyny/vim-cursorword' " 修改字符串的 引号对 cs'"
Plug 'lfv89/vim-interestingwords' " 同时高亮检索跳转 <leader>k
Plug 'dense-analysis/ale' " 异步静态检测插件，减少代码缺陷，写出更规范和干净的代码
" Plug 'vim-autoformat' " 代码格式化插件。规范代码格式，能用工具就用工具，把更多心思放在代码逻辑本身而不是调整格式上(同时避免了不同成员关于代码风格的争论)
Plug 'farmergreg/vim-lastplace' " 记住上次编辑的位置，下次打开自动定位
Plug 'xolox/vim-misc' " 保存上次编辑文件及分屏状态，下次手动打开进行恢复
Plug 'xolox/vim-session' " 保存上次编辑文件及分屏状态，下次手动打开进行恢复
Plug 'junegunn/vim-easy-align' " vipga= 或 gaip= 对齐
Plug 'tpope/vim-surround' " 成对地修改单词或句子的引号或括符
Plug 'tpope/vim-abolish' " snake_case(crs) MixedCase(crm) camelCase(crc) snake_case(crs) UPPER_CASE(cru) dash-case(cr-) dot.case(cr.) space case (cr<space>) Title Case (crt) are all just 3 keystrokes away.
Plug 'vim-utils/vim-man' " 在vim内查看man

" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } "有了 'Yggdroot/LeaderF' 这些不需要 start
Plug 'ctrlpvim/ctrlp.vim' " 快速打开文件
Plug 'vim-scripts/taglist.vim' " 文件预览，文件内跳转
" Plug 'majutsushi/tagbar' " 文件预览，文件内跳转(与'vim-scripts/taglist.vim'重复)
Plug 'vim-scripts/ag.vim' " 使用 the_silver_searcher 在vim内快速搜索:Ag
"有了 'Yggdroot/LeaderF' 这些不需要 end

" Plug 'lilydjwg/fcitx.vim' " vim下中文输入法切换

" " markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim' " :PrevimOpen

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" config 'w0ng/vim-hybrid'
" set background=dark
" colorscheme hybrid

" config Plug 'sjl/badwolf'
colorscheme badwolf
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
let g:badwolf_tabline = 3
let g:badwolf_css_props_highlight = 3

" config 'fholgado/minibufexpl.vim'
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

" config 'airblade/vim-gitgutter'
set updatetime=100

" config 'vim-scripts/winmanager'
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap \w :WMToggle<cr>

" config 'brooth/far.vim'
set lazyredraw
set regexpengine=1

" config 'easymotion/vim-easymotion'
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" Move hjkl
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" config 'lfv89/vim-interestingwords'
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>

" config 'dense-analysis/ale'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autopep8'],
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" config 'xolox/vim-misc' 'xolox/vim-session' " 保存上次编辑文件及分屏状态，下次手动打开进行恢复
let g:session_autosave = 'no'

" config 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"config 'vim-utils/vim-man' " 在vim内查看man
map <leader>v :set splitright<CR><Plug>(Vman)

" " config 'Yggdroot/LeaderF', { 'do': './install.sh' }
" let g:Lf_ShowDevIcons = 0

" config 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" config 'vim-scripts/taglist.vim'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" config 'majutsushi/tagbar' " 文件预览，文件内跳转(与'vim-scripts/taglist.vim'重复)
" nmap <F8> :TagbarToggle<CR>

" " config 'lilydjwg/fcitx.vim' " vim下中文输入法切换
" let g:input_toggle = 1
" function! Fcitx2en()
"     let s:input_status = system("fcitx-remote")
"     if s:input_status == 2
"         let g:input_toggle = 1
"         let l:a = system("fcitx-remote -c")
"     endif
" endfunction
"
" function! Fcitx2zh()
"     let s:input_status = system("fcitx-remote")
"     if s:input_status != 2 && g:input_toggle == 1
"         let l:a = system("fcitx-remote -o")
"         let g:input_toggle = 0
"     endif
" endfunction
"
" " set timeoutlen=150
" autocmd InsertLeave * call Fcitx2en()
" " autocmd InsertEnter * call Fcitx2zh()

" " config markdown
let g:vim_markdown_folding_disabled = 1


" config 'SirVer/ultisnips' && config 'honza/vim-snippets'
" Trigger configuration. You need to change this to something other than <tab>
" if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" config 'neoclide/coc.nvim', {'branch': 'release'}
" 自动安装的coc插件
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-ccls', 'coc-snippets']

" " TextEdit might fail if hidden is not set.
" set hidden " 文件未保存也允许跳转到其他文件

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.
" " 把左边改动标致列和行号列合并为一列
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" 输入字符弹出可补全列表后，按tab自动补全首个(为啥不行？)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" 使用 组合键 调出可补全列表
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" 弹出可补全列表后，用回车选择首个
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" 跳到上/下一个代码报错处
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation. 跳转到定义或引用处等等
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" 查看说明文档
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" " Highlight the symbol and its references when holding the cursor.
" " 文件中全部与光标所在相同的单词显示下划线(暂时用其他插件实现)
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming. 修改局部/全局变量名 函数名
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" 对选中代码进行格式化(格式不是我想要的)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" 暂时不明 始
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" 暂时不明 末

let g:snips_author = 'Zh Li'
