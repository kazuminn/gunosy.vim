let s:save_cpo = &cpo
set cpo&vim

let s:ruby_script_path_gunosy = expand('<sfile>:h') . '/../ruby_scripts/gunosy.rb'
let s:ruby_script_path_crawl = expand('<sfile>:h') . '/../ruby_scripts/crawl.rb'

function! gunosy#get_gunosy()
    new | execute 'read !ruby ' . s:ruby_script_path_gunosy
endfunction

function! gunosy#crawl()
    let s:line = getline('.')
    let s:line = " " . s:line
    new | execute 'read !ruby ' . s:ruby_script_path_crawl . s:line
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
