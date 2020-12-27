if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
"hi clear

hi! Normal ctermbg=NONE guibg=NONE

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wave'

" Color definitions
let g:wBlack='ctermfg=0'
let g:wRed='ctermfg=1'
let g:wGreen='ctermfg=2'
let g:wYellow='ctermfg=3'
let g:wBlue='ctermfg=4'
let g:wMagenta='ctermfg=5'
let g:wCyan='ctermfg=6'
let g:wWhite='ctermfg=7'
let g:wFg1='ctermfg=244'
let g:wFg2='ctermfg=245'
let g:wFg3='ctermfg=246'
let g:wFg4='ctermfg=247'
let g:wFg5='ctermfg=248'
let g:wFg6='ctermfg=249'

let g:wBrightRed='ctermfg=9'

let g:wBlackBg='ctermbg=0'
let g:wRedBg='ctermbg=1'
let g:wGreenBg='ctermbg=2'
let g:wYellowBg='ctermbg=3'
let g:wBlueBg='ctermbg=4'
let g:wMagentaBg='ctermbg=5'
let g:wCyanBg='ctermbg=6'
let g:wWhiteFg='ctermbg=7'
let g:wBg1='ctermbg=244'
let g:wBg2='ctermbg=245'
let g:wBg3='ctermbg=246'
let g:wBg4='ctermbg=247'
let g:wBg5='ctermbg=248'
let g:wBg6='ctermbg=249'

let g:wItalic='cterm=italic'
let g:wNoBg='ctermbg=none'
let g:wNoFg='ctermbg=none'
let g:wNoCterm='cterm=none'

function! s:HL(group, ...)
    let i=0
    let cmd=['hi!', a:group]
    while i < a:0
        call add(cmd, a:000[i])
        let i += 1
    endwhile

    execute join(cmd, ' ')
endfunction

" Search and Selection
call s:HL('Visual', g:wBg2)
call s:HL('QuickFixLine', g:wBg2, g:wFg5)
call s:HL('Search', g:wBg2, g:wWhite)
hi! link IncSearch Search

call s:HL('Pmenu', g:wBg2, g:wFg5)
call s:HL('PmenuSel', g:wBg1, g:wFg5)

" One-off misc highlightings
call s:HL('ColorColumn', g:wBg1)
call s:HL('Directory', g:wGreen)
call s:HL('Comment', g:wFg3, g:wItalic)
call s:HL('Directory', g:wGreen)
call s:HL('SignColumn', g:wNoBg)
call s:HL('Error', g:wRed, g:wNoBg)
call s:HL('ErrorMsg', g:wRed, g:wNoBg)
call s:HL('DiffText', g:wRed)
call s:HL('Question', g:wGreen)
call s:HL('MoreMsg', g:wGreen)
call s:HL('ModeMsg', g:wGreen, g:wNoCterm)
call s:HL('MatchParen', g:wBlue, g:wNoBg)
call s:HL('Title', g:wBlue)
call s:HL('Special', g:wBlue)
call s:HL('SpecialKey', g:wBlue)
call s:HL('NonText', g:wFg1)
call s:HL('VertSplit', g:wNoBg, g:wFg3, g:wNoCterm)
call s:HL('CursorLine', g:wBg1, g:wNoCterm)
call s:HL('Cursor', g:wNoCterm, g:wRedBg, g:wBlack)
call s:HL('Todo', g:wNoBg, g:wRed, g:wItalic)
call s:HL('TabLineSel', g:wBg1, g:wGreen, g:wNoCterm)
call s:HL('TabLineFill', g:wNoBg, g:wNoFg, g:wNoCterm)
call s:HL('TabLine', g:wNoBg, g:wFg2, g:wNoCterm)
call s:HL('LineNr', g:wFg2)
call s:HL('CursorLineNr', g:wFg4)
call s:HL('qfLineNr', g:wRed)
call s:HL('jsSwitchCase', g:wBlue)
call s:HL('Folded', g:wNoBg)
call s:HL('diffRemoved', g:wRed)

call s:HL('jsFlowDefinition', g:wMagenta)
call s:HL('jsFlowType', g:wMagenta)
call s:HL('jsxComponentName', g:wBlue)

" Uncolored
call s:HL('jsGlobalObjects', g:wWhite)
call s:HL('jsGlobalNodeObjects', g:wWhite)
call s:HL('jsBuiltins', g:wWhite)
call s:HL('Whitespace', g:wWhite)
call s:HL('jsFuncCall', g:wWhite)
call s:HL('jsArrowFunction', g:wWhite)

" Keywords
call s:HL('Keyword', g:wCyan)
hi! link jsImport Keyword
hi! link jsFrom Keyword
hi! link jsExport Keyword
hi! link jsExportDefault Keyword
hi! link jsStorageClass Keyword
hi! link jsKeyword Keyword
hi! link jsAsyncKeyword Keyword
hi! link jsReturn Keyword
hi! link jsConditional Keyword
hi! link jsForAwait Keyword
hi! link jsTry Keyword
hi! link jsCatch Keyword
hi! link jsException Keyword
hi! link jsFinally Keyword
hi! link jsRepeat Keyword
hi! link jsOperator Keyword

" Strings
call s:HL('String', g:wGreen)
hi! link jsString String
hi! link Identifier String
hi! link jsTemplateString String
hi! link jsObjectStringKey String

" Symbols and Numbers
call s:HL('Statement', g:wCyan)
hi! link Constant Statement
hi! link PreProc Statement
hi! link Type Statement
hi! link jsNumber Statement
hi! link jsBooleanTrue Statement
hi! link jsBooleanFalse Statement

" Function names
call s:HL('Function', g:wYellow)
hi! link jsFuncAssignment Function
hi! link jsObjectFuncName Function

" Etc
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link xmlEndTag xmlTag
hi! link jsxCloseTag jsxTag
hi! link jsxCloseString jsxTag
hi! link jsxTagName jsxComponentName
hi! link jsxOpenPunct jsxComponentName
hi! link jsxClosePunct jsxComponentName
hi! link jsxOpenString jsxComponentName
hi! link jsxCloseString jsxComponentName

" Ale
call s:HL('SpellBad', g:wNoBg, g:wBrightRed, g:wNoCterm)
hi! link ALEErrorSign SpellBad
hi! link ALEWarning SpellBad
hi! link ALEInfo SpellBad
hi! link ALEStyleError SpellBad

call s:HL('NoUnderline', g:wNoBg, g:wNoCterm)
hi! link CocUnderline NoUnderline

call s:HL('WaveVirtualText', 'ctermfg=22')
hi! link CocWarningVirtualText WaveVirtualText
hi! link CocErrorVirtualText WaveVirtualText
hi! link CocInfoVirtualText WaveVirtualText
hi! link CocHintVirtualText WaveVirtualText
hi! link CocWarningSign WaveVirtualText

highlight CocErrorHighlight ctermfg=DarkRed cterm=none
highlight CocErrorSign ctermfg=DarkRed cterm=none
highlight CocErrorVirtualText ctermfg=Red
highlight CocFloating ctermbg=244

" NERDTree
" call s:HL('NERDTreeCWD', g:wGreen)
" call s:HL('NERDTreeFile', g:wWhite)
" call s:HL('NERDTreeHelp', g:wWhite)
" call s:HL('NERDTreeDir', g:wCyan, g:wNoCterm)
" hi! link NERDTreeDirSlash NERDTreeDir
" hi! link NERDTreeOpenable NERDTreeDir
" hi! link NERDTreeClosable NERDTreeDir
"
" call s:HL('NERDTreeExecFile', g:wRed)
" call s:HL('NERDTreeUp', g:wRed)
" call s:HL('NERDTreeToggleOn', g:wRed)
" call s:HL('NERDTreeToggleOff', g:wRed)
"
" call s:HL('NERDTreeFlags', g:wMagenta)
" call s:HL('NERDTreeGitStatusModified', g:wMagenta)
" call s:HL('NERDTreeGitStatusStaged', g:wMagenta)
" call s:HL('NERDTreeGitStatusRenamed', g:wMagenta)
" call s:HL('NERDTreeGitStatusUnmerged', g:wMagenta)
" call s:HL('NERDTreeGitStatusUntracked', g:wMagenta)
" call s:HL('NERDTreeGitStatusDirDirty', g:wMagenta)
" call s:HL('NERDTreeGitStatusDirClean', g:wMagenta)
" call s:HL('NERDTreeGitStatusIgnored', g:wMagenta)
