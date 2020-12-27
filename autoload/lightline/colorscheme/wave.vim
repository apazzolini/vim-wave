" =============================================================================
" Filename: autoload/lightline/colorscheme/wave
" Author: Andre Azzolini (apazzolini)
" License: MIT License
" Last Change: 2017/12/27 08:23:27.
" =============================================================================
let s:black = [ '#000000', 0 ]
let s:white = [ '#000000', 7 ]
let s:base01 = [ '#000000', 244 ]
let s:base02 = [ '#000000', 245 ]
let s:base03 = [ '#000000', 246 ]
let s:base04 = [ '#000000', 247 ]
let s:base05 = [ '#000000', 248 ]
let s:base06 = [ '#000000', 249 ]

let s:yellow = [ '#d8af5f', 3 ]
let s:orange = [ '#d7875f', 216 ]
let s:red = [ '#d68787', 131 ]
let s:magenta = [ '#df5f87', 168 ]
let s:peach = [ '#d7afaf', 181 ]
let s:blue = [ '#87afaf', 109 ]
let s:cyan = [ '#87d7d7', 23 ]
let s:green = [ '#87af87', 108 ]
let s:white = [ '#d0d0d0', 252 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:green ], [ s:base05, s:base02 ] ]
let s:p.normal.right = [ [ s:base05, s:base02 ], [ s:base05, s:base02 ] ]
let s:p.inactive.right = [ [ s:base05, s:base01 ], [ s:base05, s:base01 ] ]
let s:p.inactive.left =  [ [ s:base05, s:base01 ], [ s:base05, s:base01 ] ]
let s:p.insert.left = [ [ s:black, s:blue ], [ s:base04, s:base02 ] ]
let s:p.replace.left = [ [ s:base03, s:magenta ], [ s:base04, s:base02 ] ]
let s:p.visual.left = [ [ s:black, s:peach ], [ s:base04, s:base02 ] ]
let s:p.normal.middle = [ [ s:base05, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base05, s:base01 ] ]
let s:p.normal.error = [ [ s:black, s:peach ] ]
let s:p.normal.warning = [ [ s:yellow, s:base02 ] ]

let g:lightline#colorscheme#wave#palette = lightline#colorscheme#flatten(s:p)
