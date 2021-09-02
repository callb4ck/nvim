local let = require("vim_interfaces/vars").let
let.g("NERDDefaultAlign", "left")

vim.cmd([[
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd CompleteDone * silent! pclose!
]])

function highlight_file(extension, fg, bg, guifg, guibg)
 vim.cmd('autocmd filetype nerdtree highlight ' .. extension ..' ctermbg=' .. bg .. ' ctermfg=' .. fg .. ' guibg=' .. guibg .. ' guifg=' .. guifg)
 vim.cmd('autocmd filetype nerdtree syn match ' .. extension .. [[  #^\s\+.* ]] .. extension .. '$#')
end

highlight_file('ini', 'yellow', 'none', 'yellow', 'none')
highlight_file('md', 'yellow', 'none', 'yellow', 'none')
highlight_file('yml', 'yellow', 'none', 'yellow', 'none')
highlight_file('toml', 'yellow', 'none', 'yellow', 'none')
highlight_file('config', 'yellow', 'none', 'yellow', 'none')
highlight_file('conf', 'yellow', 'none', 'yellow', 'none')
highlight_file('json', 'yellow', 'none', 'yellow', 'none')
highlight_file('html', 'yellow', 'none', 'yellow', 'none')
highlight_file('styl', 'cyan', 'none', 'cyan', 'none')
highlight_file('css', 'cyan', 'none', 'cyan', 'none')
highlight_file('rs', 'red', 'none', '#FF5555', 'none')
highlight_file('c', 'red', 'none', '#FF5555', 'none')
highlight_file('cpp', 'red', 'none', '#FF5555', 'none')
highlight_file('py', 'green', 'none', '#5555FF', 'none')
highlight_file('rb', 'green', 'none', '#5555FF', 'none')
highlight_file('go', 'blue', 'none', '#5555FF', 'none')
highlight_file('mod', 'blue', 'none', '#5555FF', 'none')
highlight_file('js', 'green', 'none', '#5555FF', 'none')

vim.cmd([[
augroup nerdtreeconcealbrackets
      autocmd!
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
      autocmd FileType nerdtree setlocal conceallevel=3
      autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END
]])
