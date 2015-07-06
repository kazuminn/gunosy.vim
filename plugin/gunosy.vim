if exists('g:loaded_gunosy')
  finish
endif
let g:loaded_gunosy = 1
let s:save_cpo = &cpo
set cpo&vim

command! GetGunosy call gunosy#get_gunosy()
command! GetBody call gunosy#crawl()


let &cpo = s:save_cpo
unlet s:save_cpo
