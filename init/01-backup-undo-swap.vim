" http://stackoverflow.com/questions/4331776/change-vim-swap-backup-undo-file-name
" Save your backups to a less annoying place than the current directory.
" If you have .config/nvim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.config/nvim/tmp/backup or . if all else fails.

if isdirectory($HOME . '/.config/nvim/tmp/backup') == 0
  :silent !mkdir -p ~/.config/nvim/tmp/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.config/nvim/tmp/backup/
set backupdir^=./.config/nvim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .config/nvim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.config/nvim/tmp/swap, ~/tmp or .
if isdirectory($HOME . '/.config/nvim/tmp/swap') == 0
  :silent !mkdir -p ~/.config/nvim/tmp/swap >/dev/null 2>&1
endif
set directory=~/.config/nvim/tmp/swap//
set directory+=~/.config/nvim/tmp/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the state of your previous editing session
set viminfo+=n~/.config/nvim/tmp/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .config/nvim-undo first, then ~/.config/nvim/tmp/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.config/nvim/tmp/undo') == 0
    :silent !mkdir -p ~/.config/nvim/tmp/undo > /dev/null 2>&1
  endif
  set undodir=./.config/nvim-undo//
  set undodir+=~/.config/nvim/tmp/undo//
  set undofile
endif
