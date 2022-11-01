let g:plugs_disabled = ['deoplete.nvim', 'vim-latex-live-preview']
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" Disable VimPlug plugins
function! plugins#plug_delete()
  for name in g:plugs_disabled
    if has_key(g:plugs, name)
      call remove(g:plugs, name)
    endif
    let idx = index(g:plugs_order, name)
    if idx > -1
      call remove(g:plugs_order, idx)
    endif
  endfor
endfunction

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better colorscheme
    Plug 'gruvbox-community/gruvbox'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Vimtex Plugin
    Plug 'lervag/vimtex'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'sirver/ultisnips'

    " deoplete a completion programm
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    " For updating vim live
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 

    call plugins#plug_delete()
call plug#end()

" Installs uninstalled plugins
autocmd! VimEnter r 
    \   if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|      PlugInstall --sync | q 
    \|  endif

echo 'Plugins enabled: ' . string(keys(g:plugs))
for name in keys(g:plugs)
    :let $FILE_PATH = $HOME . '/.config/nvim/plug-config/' . name . '.vim'
    :let isConfig = filereadable($FILE_PATH)
    if isConfig
        source $FILE_PATH
    endif
endfor
echo "END"

