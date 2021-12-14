set termguicolors

" IndentLine {{
let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

"--------------Sonokai settings
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'default'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_transparent_background = 0


"--------------gruvbox
"let g:gruvbox_transparent_bg = 1
let g:gruvbox_italic = 1
let g:gruvbox_bold = 0
let g:gruvbox_contrast_dark = "hard"

"-------------monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"-------------ayu
let ayucolor="dark" " for mirage version of theme

"colorscheme sonokai
colorscheme ayu
highlight Normal guibg=none
