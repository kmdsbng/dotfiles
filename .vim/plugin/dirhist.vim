" File: dirhist.vim
if exists('loaded_dirhist')
    finish
endif
let loaded_dirhist=1

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

if !exists('DIRHIST_Use_Current_Window')
    let DIRHIST_Use_Current_Window = 1
endif

if !exists('DIRHIST_File')
  let DIRHIST_File = $HOME . "/.DIRHIST"
endif

let s:TMPFILE = '/tmp/vim_dirhist_file'

function! s:DIRHIST_Print_Line(new_window)
    let fname = getline('.', '.')
    call writefile(fname, s:TMPFILE, 'b')
    exe 'q'
endfunction

function! s:DIRHIST_Open_Window()

    exe 'edit ' . g:DIRHIST_File

    " Mark the buffer as scratch
    setlocal buftype=nofile
    setlocal bufhidden=delete
    setlocal noswapfile
    setlocal nowrap
    setlocal nobuflisted
    " Use fixed height for the DIRHIST window
    if v:version >= 602
        setlocal winfixheight
    endif

    " Setup the cpoptions properly for the maps to work
    let old_cpoptions = &cpoptions
    set cpoptions&vim

    " Create a mapping to jump to the file
    nnoremap <buffer> <silent> <CR> :call <SID>DIRHIST_Print_Line(0)<CR>
    nnoremap <buffer> <silent> <C-D> :call <SID>DIRHIST_Print_Line(0)<CR>

    " Restore the previous cpoptions settings
    let &cpoptions = old_cpoptions

    " Display the DIRHIST list
    silent! 0put =s:DIRHIST_files

    " Move the cursor to the beginning of the file
    exe 1

    setlocal nomodifiable
endfunction


" Command to open the DIRHIST window
command! -nargs=0 DIRHIST call s:DIRHIST_Open_Window()

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

