if &cp || (exists("g:loaded_mmj") && g:loaded_mmj)
  finish
endif
let g:loaded_mmj = 1


function! s:sub(str,pat,rep)
  return substitute(a:str,'\C'.a:pat,a:rep,'')
endfunction

function! s:gsub(str,pat,rep)
  return substitute(a:str,'\C'.a:pat,a:rep,'g')
endfunction


function! s:editcmdfor(cmd)
  let cmd = s:findcmdfor(a:cmd)
  let cmd = s:sub(cmd,'\<sfind\>','split')
  let cmd = s:sub(cmd,'find\>','edit')
  return cmd
endfunction

function! s:FilePath()
  let f = s:gsub(expand("%:p"),'\\ \@!','/')
  let f = s:sub(f,'/$','')
  return f
endfunction

function! s:facultyEdit(bang,...)
  echo 'facultyEdit called'
  let path = s:FilePath()
endfunction

command! -buffer -bar -nargs=* Mfaculty :call s:facultyEdit(<bang>0,<f-args>)


