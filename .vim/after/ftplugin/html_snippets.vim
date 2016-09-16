if !exists('loaded_snippet') || &cp
    finish
endif

function! Id()
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    return ' id="'.st.et.'"'
endfunction

function! Cellspacing()
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    let cd = g:snip_elem_delim
    return ' cellspacing="'.st.cd."D('5')".et.'"'
endfunction

function! FileNoExt()
    return substitute(expand('%'), '\(.*\)\..*$', '\1','')
endfunction





