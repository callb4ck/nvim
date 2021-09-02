set number
set relativenumber
set nowrap
set expandtab
set tabstop=4
set softtabstop=4
set expandtab
set shell=/bin/bash
set mouse=a

set updatetime=300

let mapleader=','

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'ervandew/supertab'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'


Plug 'alaviss/nim.nvim'
Plug 'pangloss/vim-javascript'
Plug 'habamax/vim-godot'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'cespare/vim-toml'

Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"Plug 'DumbMahreeo/vim-deep-space'

call plug#end()

let g:gruvbox_transparent_bg = 1
set background=dark
set termguicolors

colorscheme gruvbox-material
let g:airline_theme="gruvbox_material"


let g:gruvbox_contrast_dark="hard"

let g:vimsyn_embed = 'l'

"actual deep_space needed
"let g:deepspace_italics=1
"let g:airline_theme="deep_space"
"

"let g:deoplete#enable_at_startup = 1 
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.ejs,*.php'

"let g:NERDCreateDefaultMappings = 1
let g:NERDDefaultAlign = 'left'

let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']

" Enable ALE auto completion globally
"let g:ale_completion_enabled = 1
let b:ale_fixers = {
            \ 'go': ['goimports', 'gofmt', 'remove_trailing_lines', 'trim_whitespace'],
            \ 'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace'],
            \ 'html': ['html-beautify']
            \ }


" Allow ALE to autoimport completion entries from LSP servers
"let g:ale_completion_autoimport = 1

"call ale#linter#Define('gdscript', {
"\   'name': 'godot',
"\   'lsp': 'socket',
"\   'address': '127.0.0.1:6008',
"\   'project_root': 'project.godot',
"\})

" PlugInstall
" UpdateRemotePlugins

noremap ù :tabe$MYVIMRC<enter>
noremap + A<esc>
noremap è I<esc>
inoremap <c-d> <esc>ddi
noremap <c-s> :w<enter>
noremap <c-z> u
inoremap <c-z> <esc>ui
noremap ò :tabp<enter>
noremap à :tabn<enter>
noremap <c-d> ld0h
noremap <c-p> :w !tee ~/tempvimfile.txt<enter>
noremap <c-n> :tabe ~/tempvimfile.txt<enter>
noremap <c-f> :set invnumber<enter>:set invrelativenumber<enter>
noremap <tab> :NERDTreeToggle<enter>
map ff <plug>NERDCommenterComment

" autocmd BufNewFile,BufRead *.rs ALEComplete
autocmd BufNewFile,BufRead *.py noremap <F5> :!python3 % ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.rb noremap <F5> :!ruby % ; echo ""     ; read<enter>
autocmd BufNewFile,BufRead *.lisp noremap <F5> :!clisp % ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.cpp noremap <F5> :!fname=$(mktemp); g++ % -o $fname; echo ""; $fname; rm $fname ; read<enter>
autocmd BufNewFile,BufRead *.tex noremap <F5> :!pdflatex %          ; pdflatex %; read<enter>
autocmd BufNewFile,BufRead *.hs noremap <F5> :!ghc %; echo ""       ; ./%:r; rm %:r; echo ""; read<enter>
autocmd BufNewFile,BufRead *.cs noremap <F5> :!dotnet run           ; read<enter>
autocmd BufNewFile,BufRead *.sh noremap <F5> :!./% ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.pl noremap <F5> :!perl -w % ; echo ""  ; read<enter>

"autocmd BufNewFile,BufRead *.cr noremap <F5> :!shards build%; ../bin/main; echo ""; read<enter>
autocmd BufNewFile,BufRead *.cr noremap <F5> :!crystal r %          ; echo ""; read<enter>


autocmd BufNewFile,BufRead *.rs noremap <F5> :!cargo run ; read<enter>
autocmd BufNewFile,BufRead *.rs noremap <F6> :!fname=$(mktemp); rustc % -o $fname; echo ""; $fname; rm $fname; read<enter>

autocmd BufNewFile,BufRead *.nim noremap <F5> :!nimble run ; read<enter>
autocmd BufNewFile,BufRead *.nim noremap <F6> :!nim r % ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.nim noremap <F6> :ALEEnableBuffer

autocmd BufNewFile,BufRead *.go noremap <F5> :!go run . ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.go noremap <F6> :!go run % ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.js noremap <F5> :!node % ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.js noremap <F6> :!npm run dev % ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F4> :GodotRunLast<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F5> :GodotRun<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F6> :GodotRunCurrent<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F7> :GodotRunFZF<CR>

" only for go development
"autocmd BufNewFile,BufRead *.html noremap <F5> :!go run . ; echo ""; read<enter>

" only for crystal development
"autocmd BufNewFile,BufRead *.html noremap <F5> :!crystal r %          ; echo ""; read<enter>

" only for rust development
autocmd BufNewFile,BufRead *.html noremap <F5> :!cargo run          ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.css noremap <F5> :!cargo run          ; echo ""; read<enter>

"command Fix execute "ALEFix"

"for i in ["go", 'rs', 'c', 'cpp', 'js', 'gd']
"    exec 'autocmd BufNewFile,BufRead *.' . i . ' noremap ff :norm 0i//<CR>'
"endfor
"
"for i in ["hs", 'lua']
"    exec 'autocmd BufNewFile,BufRead *.' . i . ' noremap ff :norm 0i--<CR>'
"endfor
"
"
"for i in ["rb", 'py', 'sh', 'fish']
"    exec 'autocmd BufNewFile,BufRead *.' . i . ' noremap ff :norm 0i#<CR>'
"endfor
"
"autocmd BufNewFile,BufRead *.vim noremap ff :norm 0i"<CR>
"
"for i in ["lisp", 'elisp', 'clj']
"    exec 'autocmd BufNewFile,BufRead *.' . i . ' noremap ff :norm 0i;;<CR>'
"endfor
"
"autocmd BufNewFile,BufRead *.vim noremap ff :norm 0i;;<CR>

"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd CompleteDone * silent! pclose!

" NERDTree's File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('md', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('toml', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', 'none')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', 'none')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', 'none')
call NERDTreeHighlightFile('rs', 'red', 'none', '#FF5555', 'none')
call NERDTreeHighlightFile('c', 'red', 'none', '#FF5555', 'none')
call NERDTreeHighlightFile('cpp', 'red', 'none', '#FF5555', 'none')
call NERDTreeHighlightFile('py', 'green', 'none', '#5555FF', 'none')
call NERDTreeHighlightFile('rb', 'green', 'none', '#5555FF', 'none')
call NERDTreeHighlightFile('go', 'blue', 'none', '#5555FF', 'none')
call NERDTreeHighlightFile('mod', 'blue', 'none', '#5555FF', 'none')
call NERDTreeHighlightFile('js', 'green', 'none', '#5555FF', 'none')

retab

augroup nerdtreeconcealbrackets
      autocmd!
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
      autocmd FileType nerdtree setlocal conceallevel=3
      autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END

:command Fix ALEFix

:command LiveServer Bracey
:command StopServer BraceyStop
:command ReloadServer BraceyReload
