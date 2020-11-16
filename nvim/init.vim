set nocompatible "vim won t pretend to act like vi & required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" syntax highlighting for cmakecache
Plugin 'hdima/python-syntax'
let python_highlight_all=1

" syntax highlighting for cmakecache
Plugin 'Neui/cmakecache-syntax.vim'

" syntax highlighting for pgsql
Plugin 'lifepillar/pgsql.vim'

" vim surround (s key) allows for operations 
Plugin 'tpope/vim-surround'

" colors pairs of symbol with different colors
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\ 'ctermfgs': ['darkblue', 'darkred', 'darkgreen', 'darkmagenta', 'darkyellow', 'green', 'lightblue'],
\ 'parentheses': [
\ 'start=/(/ end=/)/ fold',
\ 'start=/\[/ end=/\]/ fold',
\ 'start=/{/ end=/}/ fold',
\ 'start=/#ifdef/ end=/#endif/ fold',
\ 'start=/#ifndef/ end=/#endif/ fold',
\ ],
\}

" colorscheme
Plugin 'nanotech/jellybeans.vim'


" gcc comment a line, gc<movement> to comment 
Plugin 'tpope/vim-commentary'

Plugin 'preservim/nerdtree'

" highlight every symbol with a color, horrible for the eyes but good for debugging
Plugin 'jaxbot/semantic-highlight.vim'

" Spacemacs like menu
Plugin 'dpretet/vim-leader-mapper'

:nnoremap <F8> :SemanticHighlightToggle<cr>
  
let g:semanticTermColors = [1, 2, 3, 6, 9, 10, 11, 12, 13, 14, 202, 93, 147, 166, 184, 220]

let s:semanticGUIColors = [
            \'#72d572', '#c5e1a5', '#e6ee9c', '#fff59d', '#ffe082', '#ffcc80',
            \'#ffab91', '#bcaaa4', '#b0bec5', '#ffa726', '#ff8a65', '#f9bdbb',
            \'#f9bdbb', '#f8bbd0', '#e1bee7', '#d1c4e9', '#ffe0b2', '#c5cae9',
            \'#d0d9ff', '#b3e5fc', '#b2ebf2', '#b2dfdb', '#a3e9a4', '#dcedc8',
            \'#f0f4c3', '#ffb74d'
            \]



" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

:colorscheme jellybeans

"Documented vimrc with some explanations
"remember ^n means Ctrl+n

"remember about keycode 135 (keysym 0xff67, Menu) for case change
"on one letter ~
set encoding=utf-8 fileencodings=

set path +=** "tab completion for all file related and sub folder
set wildmenu  "display all matching files when using tab
"we can then just use :find myfile and vim will open it, you can also get some
"autocomplete with this
"to open a .c file you can just do :find *.c and press tab
":b will try to open file by default
"


"define :Maketags as running ctags -R .
"ctags allows to jump to definition of symbols inside projetc (IDE style)
command! Maketags !cscope -R -b
"to jump to definition of a symbol ^]
"for ambiguous tag g ^]
"
"":set runtimepath+=~/.vim/bundle/cscope/cscope_maps.vim
""function! LoadCscope()
""  let db = findfile("cscope.out", ".;")
""  if (!empty(db))
""    let path = strpart(db, 0, match(db, "/cscope.out$"))
""    set nocscopeverbose " suppress 'duplicate connection' error
""    exe "cs add " . db . " " . path
""    set cscopeverbose
""  " else add the database pointed to by environment variable 
""  elseif $CSCOPE_DB != "" 
""    cs add $CSCOPE_DB
""  endif
""endfunction
""au BufEnter /* call LoadCscope()

"
"vim keeps track of jumps you made  ^o to go back and ^i to go forward


"autocomplete, documentation :help ins-completion
"(in insert mode)
"basic one ^n and ^p, they can be managed with variable completion
"just this file ^x ^n
"for filenames  ^x ^f
"using ctags    ^x ^]

"file browsing :help netrw-browse-maps
"also when cursor is on a filename gf will open the file

syntax enable "color highlight
set colorcolumn=80 " color 80th column to give coding style help
set number relativenumber " show relative line number
set tabstop=4 "sizeof tab = 4
set shiftwidth=4  "indent size
set expandtab     "when pressing tab adds spaces instead of tab
"set list  "show every special characters
set ruler
set wrap "one line on the screen is considered as one line for vim
set textwidth=90        "fold text at 90
set virtualedit=all   "cursor can move outside of real text   
set clipboard=unnamed " default clipboard is OS clipboard
set splitbelow  " vs split right and not left
set splitright  " sp split down and not up
set foldmethod=syntax " fold every function by default, good for knowing where to go
set hidden "allows for hidden buffers

" Define the menu content with a Vim dictionary

let bufferMenu = {'name': "Buffers",
              \'l': [":ls",  "List opened buffers (:ls)"],
              \'n': [":bnext", "switch to next buffer (:bnext)"],
              \'p': [":bprevious", "switch to previous buffer (:bprevious)"],
              \'d': [":bdelete", "switch to previous buffer (:bdelete)"],
              \}

let tabMenu = { 'name': "Tabs",
              \'l': [":ls",          "List opened buffers"],
              \'n': [":tabn", "switch to next tab"],
              \'p': [":tabp", "switch to previous tab"],
              \'N': [":tabnew", "create new tab"],
              \'c': [":tab close", "close tab"],
              \}

let windowMenu = { 'name': "window",
              \'h': [":wincmd h", "h window movement (^w h)"],
              \'j': [":wincmd j", "j window movement (^w j)"],
              \'k': [":wincmd k", "k window movement (^w k)"],
              \'l': [":wincmd l", "l window movement (^w l)"],
              \'H': [":wincmd H", "H move window (^w H)"],
              \'J': [":wincmd J", "J move window (^w J)"],
              \'K': [":wincmd K", "K move window (^w K)"],
              \'L': [":wincmd L", "L move window (^w L)"],
              \'c': [":wincmd c", "close window (^w c)"],
              \'v': [":vs",       "vertical split (:vs)"],
              \'V': [":sp",       "horizontal split (:vs)"],
              \'=': [":wincmd =", "resize window to same size (^w =)"],
              \'+': [":resize +10", "resize window (10 ^w +)"],
              \'-': [":resize -10", "resize window (10 ^w -)"],
              \'>': [":10 wincmd >", "resize window (10 ^w >)"],
              \'<': [":10 wincmd <", "resize window (10 ^w <)"],
              \}

 let g:leaderMenu = {'name':  "Menu",
              \'b': [bufferMenu, "Buffers"],
              \'t': [tabMenu,    "Tabs"],
              \'w': [windowMenu, "Windows"],
              \'r': [':so $MYVIMRC', 'Reload vimrc without restarting Vim'],
              \}
 

" \'f': [":Files",       "FZF file search"],
" \'s': [":BLines",      "FZF text search into current buffer"],
" \'S': [":Lines",       "FZF text search across loaded buffers"],
" \'g': [":BCommits",    "FZF git commits of the current buffer"],
" \'G': [":Commits",     "FZF git commits of the repository"],
" \'v': [':vsplit',      'Split buffer vertically'],
" \'h': [':split',       'Split buffer horizontally'],
              " \'t': [':Tags',        'FZF tag search'],
""
" \'t': [':Tags',        'FZF tag search'],
" \'d': [':bd',          'Close buffer'],
" \'r': [':so $MYVIMRC', 'Reload vimrc without restarting Vim'],
" \'l': [':ls',          'List opened buffers'],
" \'o': [':normal gf',   'Open file under cursor'],
" \}

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
nnoremap <silent> <leader> :LeaderMapper "<Space>"<CR>
vnoremap <silent> <leader> :LeaderMapper "<Space>"<CR>
"zo opens a fold at the cursor.
"zO opens all folds at the cursor.
"zc closes a fold under cursor. 
"[z go to beginning of fold
"]z got to end of fold

"set makeprg=something   allows to set the action to do for compiling
":make to build your program
":cn :cp to go to next or previous error
":copen open a widow containing them all
"
"
"cscope set up
"Code and explanations https://vim.fandom.com/wiki/Cscope
" if has('cscope') 
"   set cscopetag cscopeverbose

"   if has('quickfix')
"     set cscopequickfix=s-,c-,d-,i-,t-,e-
"   endif

"   cnoreabbrev csa cs add
"   cnoreabbrev csf cs find
"   cnoreabbrev csk cs kill
"   cnoreabbrev csr cs reset
"   cnoreabbrev css cs show
"   cnoreabbrev csh cs help

"   command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
" endif

"-----imap------------------------------------------------------------------------
inoremap {  {}<Left><Return><Esc>O
inoremap {{ {
inoremap {} {}

inoremap (  ()<Left>
inoremap () ()
inoremap (( (

inoremap "  ""<Left>
inoremap "" "
inoremap """ ""

inoremap '  ''<Left>
inoremap ''  '

inoremap <  ><Left><
inoremap << <<
inoremap <<Space> <<Space>
inoremap <=  <=
inoremap <>  <>

inoremap [  []<Left>
inoremap [] []
inoremap [[ [

inoremap #pr #pragma<Space>once<Return><Return>
inoremap #inc #include<Space>

"---nmap-----------------------------------------------------------------------
nnoremap <Backspace> <Del>

"snippet exeample
"file $HOME/.vim/snippets/forloop.skeleton contains something like
"for (int k = 0; k < ; k++) {
"
"}
"this allow to prewrite some code like the usual for loop
"nnoremap FOR :read $HOME/.vim/snippets/forloop.skeleton<CR>2jV2k:s/k/

"---map------------------------------------------------------------------------
noremap <F11> :setlocal spell! spelllang=en_us<CR>
noremap <F12> :setlocal spell! spelllang=fr_FR<CR>
noremap <F9> :% !clang-format %

"---cabrev----------------------------------------------------------------------
cnoreabbrev H vert h


packadd termdebug
hi debugPC ctermbg=red guibg=red
hi debugBreakpoint ctermbg=blue guibg=blue
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE  guifg=NONE ctermfg=NONE

"clighter8
"colors to use"
"darkblue 12
"blue 105
"light blue 111
"turquoise 117
"lightpurple 183
"magenta 170
"orange 214
"darkorange 166
"red 9
"green 37
"dark green 64
"gold 178
"
 
" for HTML
let @h = "$v^xi<\<Esc>pA\<Space></\<Esc>pF<"

" the following is a mapping for copying a line in file and exec a command
" by it as an argument (here command is feh), disowning the executed
" command
"map ff Vy:!feh <C-r>" & disown <Cr><Cr>
"nnoremap ff ^f#i\<esc>ya'u:!xlogo -bg <C-r>" & disown <Cr><Cr>
"
" vim fileexplorer
" % create a file
"