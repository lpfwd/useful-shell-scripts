 let g:miniBufExplMapWindowNavVim = 1 
 let g:miniBufExplMapWindowNavArrows = 1 
 let g:miniBufExplMapCTabSwitchBufs = 1 
 let g:miniBufExplModSelTarget = 1
 
 set term=xterm-color
 set nocompatible
 set history=1000 
 set autoindent
 set smartindent
 set tabstop=4
 set shiftwidth=4
 set showmatch
 set guioptions-=T
 set guioptions-=r
 set mouse=nv 
 set vb t_vb=
 set ruler
 set incsearch
 set hlsearch
 set nu 
 
 filetype on 
 syntax on 
 au FileType c,cpp set cindent
 au FileType c,cpp set tabstop=4
 au FileType tmc set tabstop=4
 au FileType c,cpp,tmc set shiftwidth=4 | set expandtab
 
 set tags=tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags,../../../../../../../tags,../../../../../../../../tags
 let Tlist_Show_One_File = 1
 let Tlist_Exit_OnlyWindow = 1
 let Tlist_Enable_Fold_Column = 0
 let Tlist_WinWidth = 40
 
 let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
 
 if filereadable("cscope.out")
   cs add cscope.out  
 elseif filereadable("../cscope.out")
   cs add ../cscope.out ..
 elseif filereadable("../../cscope.out")
   cs add ../../cscope.out ../..
 elseif filereadable("../../../cscope.out")
   cs add ../../../cscope.out ../../..
 elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
 endif
 
 
 "nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
 "nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
 "nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
 "nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
 "nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
 "nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
 "nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
 "nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

 
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>  


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>  

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR> 
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR> 


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR> 
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
 
 nnoremap <silent> <F8> :TlistToggle<CR>

 "nnoremap <silent> <F12> :A<CR>
 "nnoremap <silent> <F4> :Grep<CR>
 
   colorscheme desert
 if has("gui_running")
   set guifont=-adobe-courier-medium-r-normal--14-140-75-75-m-90-iso8859-1
   let psc_style='cool'
     set lines=80
   set columns=170
   winpos 30 0
 "  colorscheme desert
   set guifont=Monospace\ 20
   let Tlist_Auto_Open=1
 else
   set background=dark
   let psc_style='cool'
 endif

