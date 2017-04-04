"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:_nvim_base = expand('<sfile>:p:h')
let g:_nvim_plugins = g:_nvim_base.'/plugins'
let g:_nvim_init = isdirectory(g:_nvim_plugins)
let g:_nvim_sources = get(g:, '_nvim_sources', {})

let g:nvim_base = g:_nvim_base
let g:plugin_path = g:_nvim_plugins

" setup directories
if isdirectory($HOME . '.config/nvim/after') == 0
  :silent !mkdir -p ~/.config/nvim/after >/dev/null 2>&1
endif
if isdirectory($HOME . '.config/nvim/autoload') == 0
  :silent !mkdir -p ~/.config/nvim/autoload >/dev/null 2>&1
endif
if isdirectory($HOME . '.config/nvim/init') == 0
  :silent !mkdir -p ~/.config/nvim/init >/dev/null 2>&1
endif
if isdirectory($HOME . '.config/nvim/plugins') == 0
  :silent !mkdir -p ~/.config/nvim/plugins >/dev/null 2>&1
endif
if isdirectory($HOME . '.config/nvim/spell') == 0
  :silent !mkdir -p ~/.config/nvim/spell >/dev/null 2>&1
endif
if isdirectory($HOME . '.config/nvim/snippets') == 0
  :silent !mkdir -p ~/.config/nvim/snippets >/dev/null 2>&1
endif

" source all scripts in a directory
function! s:source(dir) abort
  for filename in sort(glob(g:_nvim_base.'/'.a:dir.'/*.vim', 0, 1))
    let mtime = getftime(filename)
    if !has_key(g:_nvim_sources, filename) || g:_nvim_sources[filename] < mtime
      let g:_nvim_sources[filename] = mtime
      execute 'source '.filename
    endif
  endfor
endfunction

call s:source('init')

" vim:foldmethod=marker:foldlevel=0
