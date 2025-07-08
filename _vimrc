"==============================================================================
" Base behavior for Windows gVim
"==============================================================================
source $VIMRUNTIME/mswin.vim
behave mswin
set nocompatible

"==============================================================================
" Filetype, Syntax, Indentation
"==============================================================================
filetype off
syntax on
filetype plugin indent on
set modelines=0

"==============================================================================
" Interface Tweaks
"==============================================================================
set number                      " Show absolute line numbers
set ruler                       " Show cursor position in status line
set cursorline                  " Highlight the line under the cursor
set list                        " Display whitespace characters
set listchars=tab:▸\ ,space:·   " Show tabs as ▸ and spaces as ·
set showmode                    " Show current mode
set showcmd                     " Show partial commands
set laststatus=2                " Always show status line

"==============================================================================
" Encoding & Search
"==============================================================================
set encoding=utf-8              " Use UTF-8 everywhere
set hlsearch                    " Highlight search results
set incsearch                   " Incremental search
set ignorecase                  " Case-insensitive search…
set smartcase                   " …unless the pattern has mixed case
set showmatch                   " Briefly jump to matching bracket
set gdefault                    " Global replace by default

"==============================================================================
" Tabs & Indentation
"==============================================================================
set tabstop=2                   " A tab character displays as 2 spaces
set softtabstop=2               " Editing operations treat tabs as 2 spaces
set shiftwidth=2                " Indent/outdent commands shift by 2 spaces
set noexpandtab                 " Use real tabs, not spaces (team hard tabs!)
set smartindent                 " C-style smart auto-indenting

"==============================================================================
" Window Splits & Scrolling
"==============================================================================
set splitbelow                  " Horizontal splits go below current window
set scrolloff=3                 " Keep 3 lines visible above/below cursor

"==============================================================================
" File Handling & Buffer Management
"==============================================================================
set autoread                    " Auto-reload when file changes outside Vim
set hidden                      " Allow switching buffers without saving
set confirm                     " Ask to save instead of failing commands
set wildmenu                    " Enhanced command completion
set wildmode=longest:full,full
set backspace=indent,eol,start  " Better backspace behavior

" Remember cursor position when reopening files
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"==============================================================================
" GUI Settings (gVim)
"==============================================================================
set guifont=Consolas:h12        " Keep your preferred font/size
set guioptions-=m               " Remove the menu bar if you like
set guioptions-=T               " Remove the toolbar
set lines=40                    " Default window size
set columns=120
set background=dark

"==============================================================================
" Integrated Color Scheme (osiriscolors) - Extended
"==============================================================================
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="osiriscolors"

" Base colors
hi Comment          guifg=#99AA8A
hi Normal           guifg=#FFFFFF guibg=#22282A
hi CursorLine       guibg=#32383A
hi CursorColumn     guibg=#32383A
hi Search           guibg=#808080
hi Visual           guifg=#FFFFFF guibg=#4F6164 
hi VisualNOS        guifg=#FFFFFF guibg=#4F6164 
hi Identifier       guifg=#FFFFFF
hi Number           guifg=#FFCD22 
hi Operator         guifg=#E8E2B7 
hi String           guifg=#EC7600 
hi FoldColumn       guifg=#FFFFFF guibg=#394144
hi LineNr           guifg=#3F4E49 guibg=#293134 
hi PreProc          guifg=#A082BD 
hi Keyword          guifg=#93C763
hi Conditional      guifg=#93C763
hi Statement        guifg=#93C763
hi Type             guifg=#93C763
hi Structure        guifg=#678CB1 
hi Tag              guifg=#93C763
hi xmlTagName       guifg=#93C763
hi xmlCdata         guifg=#99A38A
hi xmlAttrib        guifg=#678CB1
hi htmlTagName      guifg=#93C763
hi htmlArg          guifg=#678CB1
hi ErrorMsg         guifg=#FFFFFF
hi WarningMsg       guifg=#FFCD22
hi Folded           guifg=#808080 guibg=#1C2325
hi PMenu            guifg=#CCCCFF guibg=#1C2325
hi PMenuSel         guibg=#2C3335

" Extended syntax highlighting
hi Function         guifg=#678CB1
hi Constant         guifg=#FFCD22
hi Boolean          guifg=#FFCD22
hi Float            guifg=#FFCD22
hi Character        guifg=#EC7600
hi Special          guifg=#E8E2B7
hi SpecialChar      guifg=#E8E2B7
hi Delimiter        guifg=#E8E2B7
hi SpecialComment   guifg=#99AA8A gui=italic
hi SpecialKey       guifg=#444444
hi Debug            guifg=#A082BD
hi Label            guifg=#93C763
hi Exception        guifg=#93C763
hi Include          guifg=#A082BD
hi Define           guifg=#A082BD
hi Macro            guifg=#A082BD
hi PreCondit        guifg=#A082BD
hi StorageClass     guifg=#93C763
hi Typedef          guifg=#678CB1
hi Todo             guifg=#FFCD22 guibg=#22282A gui=bold

" JavaScript/TypeScript specific
hi javaScriptFunction      guifg=#93C763
hi javaScriptBraces        guifg=#E8E2B7
hi javaScriptParens        guifg=#E8E2B7
hi javaScriptNumber        guifg=#FFCD22
hi javaScriptNull          guifg=#FFCD22
hi javaScriptUndefined     guifg=#FFCD22
hi typescriptType          guifg=#678CB1
hi typescriptInterface     guifg=#678CB1
hi typescriptEnum          guifg=#678CB1

" HTML specific
hi htmlTag          guifg=#E8E2B7
hi htmlEndTag       guifg=#E8E2B7
hi htmlString       guifg=#EC7600
hi htmlValue        guifg=#EC7600
hi htmlTitle        guifg=#FFFFFF gui=bold

" CSS specific
hi cssClassName     guifg=#678CB1
hi cssIdentifier    guifg=#678CB1
hi cssTagName       guifg=#93C763
hi cssProp          guifg=#FFFFFF
hi cssAttr          guifg=#EC7600
hi cssValueLength   guifg=#FFCD22
hi cssValueNumber   guifg=#FFCD22
hi cssColor         guifg=#FFCD22
hi cssBraces        guifg=#E8E2B7

" JSON specific
hi jsonKeyword      guifg=#678CB1
hi jsonString       guifg=#EC7600
hi jsonNumber       guifg=#FFCD22
hi jsonBoolean      guifg=#FFCD22
hi jsonNull         guifg=#FFCD22
hi jsonBraces       guifg=#E8E2B7
hi jsonQuote        guifg=#E8E2B7

" PowerShell specific
hi ps1Keyword       guifg=#93C763
hi ps1String        guifg=#EC7600
hi ps1Comment       guifg=#99AA8A
hi ps1Variable     guifg=#678CB1
hi ps1Number        guifg=#FFCD22
hi ps1Operator      guifg=#E8E2B7

" Batch file specific
hi dosbatchLabel    guifg=#678CB1
hi dosbatchVariable guifg=#678CB1
hi dosbatchString   guifg=#EC7600
hi dosbatchComment  guifg=#99AA8A

" Shell script specific
hi shString         guifg=#EC7600
hi shVariable       guifg=#678CB1
hi shDeref          guifg=#678CB1
hi shFunction       guifg=#678CB1
hi shStatement      guifg=#93C763
hi shConditional    guifg=#93C763

" Enhanced diff colors that work with your color scheme
if &diff
    hi DiffAdd      guifg=#93C763 guibg=#2C3335
    hi DiffDelete   guifg=#EC7600 guibg=#2C3335
    hi DiffChange   guifg=#FFCD22 guibg=#2C3335
    hi DiffText     guifg=#FFFFFF guibg=#4F6164
endif

"==============================================================================
" Mouse & Clipboard
"==============================================================================
set mouse=a                     " Enable mouse in all modes
set clipboard=unnamed           " Yank/paste to Windows clipboard by default

" Clipboard key mappings:
"  Ctrl-C in Visual mode → copy to Windows clipboard
vnoremap <C-C> "+y
"  Ctrl-V in Normal mode → paste from Windows clipboard, preserving registers
nnoremap <C-V> "+gP
"  Ctrl-V in Insert mode → insert from Windows clipboard
inoremap <C-V> <C-R>+

"==============================================================================
" Visual & Behavior Tweaks
"==============================================================================
set visualbell                  " Flash instead of beep
set nowrap                      " Don't wrap long lines
set formatoptions-=t            " Don't auto-wrap text
set textwidth=0
set wrapmargin=0

"==============================================================================
" Backups & Undo
"==============================================================================
" Store backups and undo files in temp dirs to keep project dirs clean
set backupdir=~/.vim//,$TEMP,.
set directory=~/.vim//,$TEMP,.
set undodir=~/.vim//,$TEMP,.
set undofile

"==============================================================================
" Key Mappings & Navigation
"==============================================================================
" Clear search highlighting with double Escape
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" Quick buffer switching (Ctrl+Tab like other Windows apps)
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" Better window navigation with Ctrl+arrow keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"==============================================================================
" Language-Specific Settings
"==============================================================================
" C# specific settings
autocmd FileType cs setlocal commentstring=//\ %s
autocmd FileType cs setlocal iskeyword+=@-@

" JavaScript/TypeScript specific settings
autocmd FileType javascript,typescript setlocal commentstring=//\ %s
autocmd FileType javascript,typescript setlocal iskeyword+=$

" JSON specific settings
autocmd FileType json setlocal commentstring=//\ %s
autocmd FileType json setlocal conceallevel=0  " Show all quotes in JSON

" HTML specific settings
autocmd FileType html setlocal commentstring=<!--\ %s\ -->
autocmd FileType html setlocal iskeyword+=-

" CSS specific settings
autocmd FileType css setlocal commentstring=/*\ %s\ */
autocmd FileType css setlocal iskeyword+=-

" PowerShell specific settings
autocmd FileType ps1 setlocal commentstring=#\ %s
autocmd FileType ps1 setlocal iskeyword+=-

" Batch file specific settings
autocmd FileType dosbatch setlocal commentstring=rem\ %s

" Shell script specific settings
autocmd FileType sh,bash setlocal commentstring=#\ %s

" Better JSON formatting and validation
autocmd FileType json syntax match Error /\%#[^"]\+$/
autocmd FileType json setlocal foldmethod=syntax

" Auto-detect file types by extension
autocmd BufNewFile,BufRead *.ps1 setfiletype ps1
autocmd BufNewFile,BufRead *.psm1 setfiletype ps1
autocmd BufNewFile,BufRead *.psd1 setfiletype ps1
autocmd BufNewFile,BufRead *.ts setfiletype typescript
autocmd BufNewFile,BufRead *.tsx setfiletype typescript
