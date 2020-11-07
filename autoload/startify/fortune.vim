let s:log = [
      \'                       _                        ',
      \' _ __   ___  _____   _(_)_ __ ___   __  _____   ',
      \'|  _ \ / _ \/ _ \ \ / / |  _ ` _ \  \ \/ / __|  ',
      \'| | | |  __/ (_) \ V /| | | | | | |  >  < (__   ',
      \'|_| |_|\___|\___/ \_/ |_|_| |_| |_| /_/\_\___|  ',
      \'                                                ',
      \'                                                ',
      \'  天行健，君子以自强不息。                      ',
      \ ]

function! s:get_random_offset(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\.\zs\d\+')[1:]) % a:max
endfunction

function! startify#fortune#quote() abort
  return s:quotes[s:get_random_offset(len(s:quotes))]
endfunction

function! startify#fortune#dogesay() abort
  return map(s:log, '"   ". v:val')
endfunction
