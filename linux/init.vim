call plug#begin('~/.config/nvim/plugged')

" Essential
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'coreyja/fzf.devicon.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug '907th/vim-auto-save'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-smooth-scroll'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bkad/camelcasemotion'
Plug 'liuchengxu/vista.vim'
Plug 'yuki-ycino/fzf-preview.vim'
Plug 'simeji/winresizer'
Plug 'TaDaa/vimade'
Plug 'moll/vim-bbye'
Plug 'junegunn/vim-emoji'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'evidens/vim-twig'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'nikvdp/ejs-syntax'
Plug 'voldikss/vim-floaterm'


"IDE like features
Plug 'StanAngeloff/php.vim'
Plug 'easymotion/vim-easymotion'
Plug 'honza/vim-snippets'
Plug 'kkoomen/vim-doge'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Dart and Flutter
Plug 'dart-lang/dart-vim-plugin'

" Laravel Projects
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-projectionist'

" Colorscheme Collections
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/tomorrow-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Basic configuration
set encoding=utf-8
set hidden
set number
set relativenumber
set linespace=12
set title
set tabstop=4
set shiftwidth=4
set nobackup
set ignorecase
set smartcase
set nowrap
set nowritebackup
set updatetime=300
set nobackup
set noswapfile
set showmode
set autoindent
set smartindent
set cursorline
set mouse=a
set nocompatible
set shortmess+=c
set signcolumn=yes
filetype plugin on
syntax on
set cc=80,120

set tags+=tags;$HOME

" use space as leader
let mapleader = ";"
let g:mapleader = ";"

" enable AutoSave on Vim startup
let g:auto_save = 1  

" Down is really the next line
nnoremap j gj
nnoremap k gk
nnoremap J <Nop>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Buffer switcher using NerdTree
map <S-Right> :bnext<CR>
map <S-Left>  :bprevious<CR>
map <S-l> :bnext<CR>
map <S-h>  :bprevious<CR>
map <C-o> :CocCommand explorer<CR>

let g:winresizer_enable=1
let g:winresizer_start_key = '<C-w>r'

" Split Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Quick close buffers
nmap <C-x> :Bdelete<CR>

" Quick remove search highlight
nnoremap ss :noh<CR>


let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors     " enable true colors support


" Colorscheme configuration
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_contrast_dark = "soft"

let g:PaperColor_Theme_Options = {	
			\ 'theme': {
			\	'default': {
			\		'transparent_background': 0,
			\		'allow_bold': 1,
			\		'allow_italic': 1
			\	}
			\ }
			\}

let ayucolor="mirage"  " for light version of theme
set background=dark

" material themes
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'

set t_Co=256
colorscheme gruvbox

 
" make transparent window
 "hi Normal guibg=NONE ctermbg=NONE


" Filetype maping
let g:coc_filetype_map = {
  \ 'blade': 'html',
  \ }

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Vim airline custom themes
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='gruvbox'
let g:airline#extensions#coc#enabled = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php'

" Make it so that a curly brace automatically inserts an indented line
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" Minimal tagbar item list
nmap <F7> :TagbarToggle<CR>
let g:tagbar_type_php  = {
			\ 'ctagstype' : 'php',
			\ 'kinds'     : [
			\ 'i:interfaces',
			\ 'c:classes',
			\ 'd:constant definitions',
			\ 'f:functions',
			\ 'j:javascript functions:1'
			\ ]
			\ }

" automatic resize vertical split when focus (like VSCode)
" let &winwidth = &columns * 7 / 10

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
	
noremap <silent><expr> <cr> pumvisible() ? coc#_coc#on_enter()\<CR>"

let g:indent_guides_enable_on_vim_startup = 0

let g:camelcasemotion_key = '<leader>'
map <silent> b <Plug>CamelCaseMotion_b

"Fzf Config
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o -path 'vendor/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

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

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"let g:fzf_preview_window = 'right:60%'

"command! -bang -nargs=? -complete=dir Files
    "\ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

"command! -bang -nargs=* Rg
  "\ call fzf#vim#grep(
  "\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  "\   fzf#vim#with_preview(), <bang>0)


" Files Navigation using fzf
map <C-p> :FzfPreviewProjectFiles<CR>
map <C-e> :FzfPreviewAllBuffers<CR>
map <C-t> :Vista finder fzf:coc<CR>
map <C-f> :RgWithDevicons<CR> 

" Config for vue language serve
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'coc',
  \ 'php': 'coc',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

let g:vista_ignore_kinds = ['Variable']
let g:vista_fzf_preview = ['right:50%']
let g:fzf_preview_use_dev_icons = 1

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)


let g:gitgutter_sign_added ="🆕"
let g:gitgutter_sign_modified = "✏️ "
let g:gitgutter_sign_removed = "🚩"
let g:gitgutter_sign_modified_removed = "📛"
let g:coc_status_error_sign = "🐞"

"Set no line toggle
function Noline()
	execute "set number!"
	execute "set relativenumber!"
endfunction

nmap <leader>nl :call Noline()<CR>

let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_keymap_new    = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tp'
let g:floaterm_keymap_next   = '<leader>tn'
let g:floaterm_keymap_hide   = '<leader>th'

