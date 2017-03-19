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
