" Allargs.vim
" ex)
" :Allargs %s/foo/bar/ge|update
" �g�����Bfoo �� bar �ɒu�����܂���B
" :Allargs %s/foo/bar/ge|update
" e�I�v�V���������Ȃ��� foo �������Ƃ������b�Z�[�W���̂�т�\������āA����
" �ł����Ă��u�����I���Ȃ��̂ŋC�����悤(����ɋC�Â����ɖ����Ƀn�}����)
" �R�}���h�� | �ŘA���Ŏ��s�ł��āAupdate �͕ύX�̂������o�b�t�@������ۑ��B�ƁB
" �J�����g�� *.cpp ��u������ꍇ�͗\�߁A
" :ar *.cpp
" ���Ă���Ƃ��ƑS���ǂݍ��܂��B
" �m�F����ɂ�
" :ar
function! Allargs(command)
 let i = 0
 while i < argc()
    if filereadable(argv(i))
      execute "e " . argv(i)
      execute a:command
    endif
    let i = i + 1
 endwhile
endfunction
command! -nargs=+ -complete=command Allargs call Allargs(<q-args>)

