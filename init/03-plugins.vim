" plugin manager is configured in 01-plugged.vim

"" git integration
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" complete/snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" gui
Plug 'romainl/flattened' 		" Solarized, without the bullshit.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" syntax
Plug 'pearofducks/ansible-vim'
" Plug 'phenomenes/ansible-snippets'
Plug 'elzr/vim-json'
Plug 'vim-scripts/vim-kickstart'
Plug 'gabrielelana/vim-markdown'
Plug 'hashivim/vim-packer'
Plug 'saltstack/salt-vim'
Plug 'scrooloose/syntastic'
Plug 'hashivim/vim-vagrant'
Plug 'stephpy/vim-yaml'
Plug 'lepture/vim-jinja'

" languages
Plug 'vim-ruby/vim-ruby'
Plug 'klen/python-mode'

" markup
Plug 'dahu/vim-asciidoc'

" misc
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'dahu/vimple'              " Required for dahu/vim-asciidoc
Plug 'dahu/Asif'                " Required for dahu/vim-asciidoc
Plug 'Raimondi/VimRegStyle'     " Required for dahu/vim-asciidoc
Plug 'vim-scripts/SyntaxRange'  " Required for dahu/vim-asciidoc
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-abolish'

" do not edit below this  line
" vim-sensible needs to be the last plugin installed
Plug 'tpope/vim-sensible'

" Install plugins if vim-plug was just installed
if vim_plug == 0
    echo "Installing Plugins, ignore any kep map messages"
    echo ""
    :PlugInstall
endif

call plug#end()
