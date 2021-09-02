local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'ervandew/supertab'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'dense-analysis/ale'
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
Plug 'sheerun/vim-polyglot'


Plug 'alaviss/nim.nvim'
Plug 'pangloss/vim-javascript'
Plug 'habamax/vim-godot'
Plug('turbio/bracey.vim', {['do'] = 'npm install --prefix server' })
Plug 'cespare/vim-toml'

Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

vim.call('plug#end')


require("plugins/configs/ale")
require("plugins/configs/closetag")
require("plugins/configs/indent_blankline")
require("plugins/configs/nerdtree")
require("plugins/configs/supertab")
require("plugins/configs/theme")
