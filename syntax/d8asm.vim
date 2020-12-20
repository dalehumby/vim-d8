" Vim syntax file
" Language: D8 assembly
" Maintainer: Dale Humby

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn match   d8DirStart      "\." nextgroup=d8Directive
syn keyword d8Directive     reset origin define string byte array

syn keyword d8Register      A B C D E PAGE X SP

syn keyword d8Instruction   ADD ADC AND CLC CLR CMP DEC
syn keyword d8Instruction   INC LD MOV NOP NOT OR PSH PUL ROLC RORC RTS ST SEC
syn keyword d8Instruction   STOP SBB XOR

syn keyword d8BranchInstr   BCC BCS BEQ BNE BRA BSR nextgroup=d8Location
syn match   d8Location      "\s\+\w\+" contained
syn match   d8Label         "\w\+:"

syn match	d8Operator      "[+-/*\(\)]"
syn match   d8Decimal       "\d\+"
syn match   d8Hex           "0x[0-9A-F]\+"
syn region  d8String        start="\"" end="\""
syn match   d8Special       "[#&,{}]"

syn keyword d8Todo          contained TODO FIXME NOTE
syn match   d8Comment       ";.*$" contains=d8Todo


" Link to standard syntax groups
hi def link d8Location      identifier
hi def link d8Label         identifier
hi def link d8Register      type
hi def link d8Instruction   keyword
hi def link d8BranchInstr   keyword
hi def link d8Operator      operator
hi def link d8Decimal       number
hi def link d8Hex           number
hi def link d8String        string
hi def link d8Special       special
hi def link d8DirStart      preproc
hi def link d8Directive     preproc
hi def link d8Todo          todo
hi def link d8Comment       Comment

let b:current_syntax = "d8asm"
