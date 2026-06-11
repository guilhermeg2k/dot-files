" Vim syntax file
" Language: DuskLang
" Maintainer: You
" Latest Revision: 25 December 2025

if exists("b:current_syntax")
  finish
endif

" --- Comments ---
" Multi-line comments (### ... ###)
syntax region guComment start="###" end="###"
" Single line comments (# ...)
syntax match guComment "#.*$"


" --- Keywords ---
" Declarations and Modifiers
syntax keyword guKeyword let mut pub mod use return continue break
syntax keyword guKeyword struct nextgroup=guStructName skipwhite

" Control Flow
syntax keyword guConditional if else match default
syntax keyword guRepeat for

" Operators (Word-based)
syntax keyword guOperator or and

" Constants
syntax keyword guConstant null true false

" Built-ins (like echo)
syntax keyword guBuiltin echo


" --- Types ---
syntax keyword guType number bool boolean string void
" Match nullable types like ?number (highlight the ? separate or as part of type)
syntax match guTypeModifier "?" nextgroup=guType


" --- Strings and Interpolation ---
" Matches #{variable} inside strings
syntax match guInterpolation "#{[^}]*}" contained

" Single quoted strings containing interpolation
syntax region guString start="\"" end="\"" contains=guInterpolation


" --- Numbers ---
syntax match guNumber "\<\d\+\>"
syntax match guNumber "\<\d\+\.\d\+\>"


" --- Special Operators ---
syntax match guArrow "->"
syntax match guPipe "|>"
syntax match guRange "\.\."
syntax match guSpread "\.\.\."
syntax match guCoalesce "??"
syntax match guTernary "?"


" --- Functions and Structs ---
" Match function calls: myFunc(...) - highlights 'myFunc'
syntax match guFunctionCall "\w\+\ze("

" Match Struct definition names: struct Animal
syntax match guStructName "\w\+" contained


" --- Highlighting Linking ---
" Map your custom groups to Standard Vim groups
highlight default link guComment Comment
highlight default link guKeyword Keyword
highlight default link guConditional Conditional
highlight default link guRepeat Repeat
highlight default link guOperator Operator
highlight default link guConstant Constant
highlight default link guBuiltin Function
highlight default link guType Type
highlight default link guTypeModifier StorageClass
highlight default link guString String
highlight default link guInterpolation Special
highlight default link guNumber Number

" Special Operators
highlight default link guArrow Operator
highlight default link guPipe Operator
highlight default link guRange Operator
highlight default link guSpread Operator
highlight default link guCoalesce Operator

" Entities
highlight default link guFunctionCall Function
highlight default link guStructName Structure

let b:current_syntax = "dusk"
