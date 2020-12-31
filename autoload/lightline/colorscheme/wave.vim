" =============================================================================
" Filename: autoload/lightline/colorscheme/wave
" Author: Andre Azzolini (apazzolini)
" License: MIT License
" =============================================================================

let s:black   = [ '#1c2023', 0   ]
let s:red     = [ '#d19b9b', 1   ]
let s:green   = [ '#a2c7a9', 2   ]
let s:yellow  = [ '#dcdcaa', 3   ]
let s:blue    = [ '#ae95c7', 4   ]
let s:magenta = [ '#c795ae', 5   ]
let s:cyan    = [ '#95aec7', 6   ]
let s:white   = [ '#c7ccd1', 7   ]
let s:base01  = [ '#2b3034', 244 ]
let s:base02  = [ '#565e65', 245 ]
let s:base03  = [ '#747c84', 246 ]
let s:base04  = [ '#adb3ba', 247 ]
let s:base05  = [ '#c7ccd1', 248 ]
let s:base06  = [ '#dfe2e5', 249 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:green ], [ s:base05, s:base02 ] ]
let s:p.normal.right = [ [ s:base05, s:base02 ], [ s:base05, s:base02 ] ]
let s:p.inactive.right = [ [ s:base05, s:base01 ], [ s:base05, s:base01 ] ]
let s:p.inactive.left =  [ [ s:base05, s:base01 ], [ s:base05, s:base01 ] ]
let s:p.insert.left = [ [ s:black, s:cyan ], [ s:base04, s:base02 ] ]
let s:p.replace.left = [ [ s:base03, s:magenta ], [ s:base04, s:base02 ] ]
let s:p.visual.left = [ [ s:black, s:magenta ], [ s:base04, s:base02 ] ]
let s:p.normal.middle = [ [ s:base05, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base05, s:base01 ] ]
let s:p.normal.error = [ [ s:black, s:magenta ] ]
let s:p.normal.warning = [ [ s:yellow, s:base02 ] ]

let g:lightline#colorscheme#wave#palette = lightline#colorscheme#flatten(s:p)
