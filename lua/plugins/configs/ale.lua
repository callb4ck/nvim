local let = require("vim_interfaces/vars").let

let.g("ale_fixers", {
  go = {'goimports', 'gofmt', 'remove_trailing_lines', 'trim_whitespace'},
  rust = {'rustfmt', 'remove_trailing_lines', 'trim_whitespace'},
  html = {'html-beautify'}
})
