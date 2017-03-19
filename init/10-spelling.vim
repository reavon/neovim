if isdirectory($HOME . '/.config/nvim/spell') == 0
  :silent !mkdir -p ~/.config/nvim/spell >/dev/null 2>&1
  :silent !touch ~/.config/nvim/spell/en.utf-8.add 2>&1
endif

set spelllang=en
set spellfile=~/.config/nvim/spell/en.utf-8.add

" Turn on spell-checking for Markdown
autocmd BufRead,BufNewFile *.md setlocal spell

" git commits
autocmd FileType gitcommit setlocal spell
autocmd Filetype gitcommit setlocal spell textwidth=72
