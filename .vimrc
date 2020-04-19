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

" 外观
set number
set relativenumber
set cursorline
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
noremap <LEADER>1 :1b<CR>
noremap <LEADER>2 :2b<CR>
noremap <LEADER>3 :3b<CR>
noremap <LEADER>4 :4b<CR>
noremap <LEADER>h1 :set nosplitright<CR>:vsplit<CR>:1b<CR>
noremap <LEADER>h2 :set nosplitright<CR>:vsplit<CR>:2b<CR>
noremap <LEADER>h3 :set nosplitright<CR>:vsplit<CR>:3b<CR>
noremap <LEADER>h4 :set nosplitright<CR>:vsplit<CR>:4b<CR>
" noremap <LEADER>j1 :set splitbelow<CR>:split<CR>:1b<CR>
" noremap <LEADER>j2 :set splitbelow<CR>:split<CR>:2b<CR>
" noremap <LEADER>j3 :set splitbelow<CR>:split<CR>:3b<CR>
" noremap <LEADER>j4 :set splitbelow<CR>:split<CR>:4b<CR>
" noremap <LEADER>k1 :set nosplitbelow<CR>:split<CR>:1b<CR>
" noremap <LEADER>k2 :set nosplitbelow<CR>:split<CR>:2b<CR>
" noremap <LEADER>k3 :set nosplitbelow<CR>:split<CR>:3b<CR>
" noremap <LEADER>k4 :set nosplitbelow<CR>:split<CR>:4b<CR>
noremap <LEADER>l1 :set splitright<CR>:vsplit<CR>:1b<CR>
noremap <LEADER>l2 :set splitright<CR>:vsplit<CR>:2b<CR>
noremap <LEADER>l3 :set splitright<CR>:vsplit<CR>:3b<CR>
noremap <LEADER>l4 :set splitright<CR>:vsplit<CR>:4b<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

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
        call append(5,"Last modified: humble ".strftime("%Y%m%d %H:%M"))
        call append(6,"Usage:")
        call append(7,"  python3 ".expand("%:t")." <TODO>")
        call append(8,"'''")
        call append(9,"")
    elseif &filetype == 'sh'
        call append(0,"#!/bin/bash")
        call append(1,"# -*- coding: utf-8 -*-")
        call append(2,"#Filename: ".expand("%:t"))
        call append(3,"#Description: <TODO>")
        call append(4,"#Last modified: humble ".strftime("%Y%m%d %H:%M"))
        call append(5,"#Usage:")
        call append(6,"#  sh ".expand("%:t")." <TODO>")
        call append(7,"")
    elseif &filetype == 'cpp'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y%m%d %H:%M"))
        call append(3," */")
    elseif &filetype == 'c'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y%m%d %H:%M"))
        call append(3," */")
    elseif &filetype == 'h'
        call append(0,"/* Filename: ".expand("%:t"))
        call append(1," * Description: <TODO>")
        call append(2," * Last modified: humble ".strftime("%Y%m%d %H:%M"))
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
    execute '/Last modified/s@:.*$@\=strftime(": humble %Y%m%d %H:%M")@'
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
        call append(11,"    if(argc != 1){")
        call append(12,"        fprintf(stderr, \"argc !=1\");")
        call append(13,"        usage();")
        call append(14,"        exit(1);")
        call append(15,"    }")
        call append(16,"")
        call append(17,"    <TODO>")
        call append(18,"    return 0;")
        call append(19,"}")
        call append(20,"")
        call append(21,"static void usage(void)")
        call append(22,"{")
        call append(23,"#define USAGE \"Usage:\\n\\")
        call append(24,"  Helloworld\\n\"")
        call append(25,"    printf(USAGE);")
        call append(26,"}")
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

" Make sure you use single quotes

" 美化
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
" Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
" Plug 'fholgado/minibufexpl.vim' " 这种安装方式似乎对config 'fholgado/minibufexpl.vim' 无效
" Plug 'vim-scripts/a.vim' " 写代码时space+is就冲突了<LEADER>is，所以停用掉
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'vim-scripts/ag.vim'
Plug 'brooth/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'
Plug 'dense-analysis/ale'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'

Plug 'ycm-core/YouCompleteMe'
" Initialize plugin system
call plug#end()

" config 'w0ng/vim-hybrid'
set background=dark
colorscheme hybrid

" config 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" config 'airblade/vim-gitgutter'
set updatetime=100

" config 'vim-scripts/taglist.vim'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

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

" config 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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

" config markdown
let g:vim_markdown_folding_disabled = 1

" YouCompleteMe
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'
" C family Completion Path
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" 跳转快捷键
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
