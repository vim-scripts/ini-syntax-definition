" Vim syntax file
" Language:	Vim 7.2 script
" Maintainer:	Peter Hosey
" Last Change:	Nov 11, 2008
" Version:	7.2-01

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match   iniSection skipwhite contains=iniRule "^\[.\+\]$"

syn match   iniRule "^[^=:]\{-1,}="
syn match   iniRule "^[^:=]\{-1,}:"

" Highlighting Settings
" ====================

hi def link iniSection Keyword
hi def link iniRule Identifier

let b:current_syntax = "ini"
