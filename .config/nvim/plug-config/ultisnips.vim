echo "Configuring ultisnips"
" let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" Use both `UltiSnips` and `MySnippets` as snippet directories
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']  " using Neovim
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
