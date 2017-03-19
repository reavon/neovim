" vim-plug cheat sheet
" :PlugClean
" :PlugDiff
" :PlugInstall
" :PlugSnapshot
" :PlugStatus
" :PlugUpdate
" :PlugUpgrade

" Install vim-plug if it isn't installed
let vim_plug=1
let vimplug=expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vimplug)
    echo "Installing vim-plug..."
        echo ""
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        let vim_plug=0
endif

" Specify a directory for plugins
call plug#begin(g:plugin_path)

" call plug#end() is set in 02-plugins.vim
