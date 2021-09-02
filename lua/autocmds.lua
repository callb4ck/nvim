vim.cmd([[
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


" Only for rust development
autocmd BufNewFile,BufRead *.html noremap <F5> :!cargo run          ; echo ""; read<enter>
autocmd BufNewFile,BufRead *.css noremap <F5> :!cargo run          ; echo ""; read<enter>
]])
