" Vim syntax file
" Language: hg histedit
" Maintainer: Max Wang <mxawng@gmail.com>
" Filenames: hg-histedit-*.txt

if exists("b:current_syntax")
  finish
endif

syn case match

syn match hghisteditHash   "\v<\x{7,40}>" contained
syn match hghisteditCommit "\v<\x{7,40}> <\d+>"  nextgroup=hghisteditSummary skipwhite
syn match hghisteditPick "\v^p%(ick)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditMess "\v^m%(ess)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditBase "\v^b%(ase)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditEdit "\v^e%(dit)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditStop "\v^s%(top)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditFold "\v^f%(old)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditRoll "\v^r%(oll)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditDrop "\v^d%(rop)=>" nextgroup=hghisteditCommit skipwhite
syn match hghisteditExec  "\v^%(x|exec)>"    nextgroup=hghisteditCommand skipwhite
syn match hghisteditExecr "\v^%(xr|execr)>"  nextgroup=hghisteditCommand skipwhite
syn match hghisteditSummary ".*"    contains=hghisteditHash contained
syn match hghisteditCommand ".*"                            contained
syn match hghisteditComment "^#.*"  contains=hghisteditHash

hi def link hghisteditCommit  hghisteditHash
hi def link hghisteditHash  Identifier
hi def link hghisteditPick  Statement
hi def link hghisteditMess  Number
hi def link hghisteditBase  Statement
hi def link hghisteditEdit  PreProc
hi def link hghisteditStop  Underlined
hi def link hghisteditFold  Type
hi def link hghisteditRoll  Type
hi def link hghisteditDrop  Special
hi def link hghisteditExec  Function
hi def link hghisteditExecr Function
hi def link hghisteditSummary String
hi def link hghisteditComment Comment

let b:current_syntax = "hghistedit"
