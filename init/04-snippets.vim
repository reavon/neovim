" Snippets
let g:_author='Tracy Phillips'
let g:_snips_author='Tracy Phillips'
let g:_snips_author_anap='Tracy Phillips'

let g:_email='tracphil@gmail.com'
let g:_snips_email='tracy.phillips@amerinap.com'
let g:_snips_email_anap='tracy.phillips@amerinap.com'

let g:_snips_github='https://github.com/reavon'
let g:_github='https://github.com/reavon'

if strridx(getcwd(), "amerinap") > 0
   let g:_snips_company='Amerinap, Inc.'
   let g:_company='Amerinap, Inc.'
elseif strridx(getcwd(), "salt-formulas") > 0
   let g:_snips_company='Amerinap, Inc.'
   let g:_company='Amerinap, Inc.'
elseif strridx(getcwd(), "amerinap") > 0
   let g:_snips_company='Amerinap, Inc.'
   let g:_company='Amerinap, Inc.'
else
   let g:_snips_company=g:_snips_author
   let g:_company=g:_snips_author
endif

set rtp+=,~/.config/neovim/snippets'
