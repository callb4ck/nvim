vim.cmd([[
autocmd BufNewFile,BufRead *.py noremap <C-E> :!python3 % ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.rb noremap <C-E> :!ruby % ; echo ""     ; read<enter>
autocmd BufNewFile,BufRead *.lisp noremap <C-E> :!clisp % ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.cpp noremap <C-E> :!fname=$(mktemp); g++ % -o $fname; echo ""; $fname; rm $fname ; read<enter>
autocmd BufNewFile,BufRead *.tex noremap <C-E> :!pdflatex %          ; pdflatex %; read<enter>
autocmd BufNewFile,BufRead *.hs noremap <C-E> :!ghc %; echo ""       ; ./%:r; rm %:r; echo ""; read<enter>
autocmd BufNewFile,BufRead *.cs noremap <C-E> :!dotnet run           ; read<enter>
autocmd BufNewFile,BufRead *.sh noremap <C-E> :!./% ; echo ""  ; read<enter>
autocmd BufNewFile,BufRead *.pl noremap <C-E> :!perl -w % ; echo ""  ; read<enter>

"autocmd BufNewFile,BufRead *.cr noremap <C-E> :!shards build%; ../bin/main; echo ""; read<enter>
autocmd BufNewFile,BufRead *.cr noremap <C-E> :!crystal r --no-color %          ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.rs noremap <C-E> :!cargo run ; read<enter>
autocmd BufNewFile,BufRead *.rs noremap <F6> :!fname=$(mktemp); rustc % -o $fname; echo ""; $fname; rm $fname; read<enter>
autocmd BufNewFile,BufRead *.rs noremap <F8> :!cargo clippy --fix; read<enter>

autocmd BufNewFile,BufRead *.nim noremap <C-E> :!nimble dev ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.nim noremap <F6> :!nimble run ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.nim noremap <F7> :!nim r % ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.go noremap <C-E> :!go run . ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.go noremap <F6> :!go run % ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.js noremap <C-E> :!node % ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.js noremap <F6> :!npm run dev % ; echo ""; read<enter>

autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F4> :GodotRunLast<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <C-E> :GodotRun<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F6> :GodotRunCurrent<CR>
autocmd BufNewFile,BufRead *.gd nnoremap <buffer> <F7> :GodotRunFZF<CR>


" Only for rust development
autocmd BufNewFile,BufRead *.html noremap <C-E> :!cargo run          ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.css noremap <C-E> :!cargo run          ; echo ""; read<enter>
]])
