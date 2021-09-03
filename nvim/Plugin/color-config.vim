"--------------Sonokai settings
   if has('termguicolors')
     set termguicolors
   endif

   " The configuration options should be placed before `colorscheme sonokai`.
   let g:sonokai_style = 'default'
   let g:sonokai_enable_italic = 1
   let g:sonokai_disable_italic_comment = 1
   let g:sonokai_transparent_background = 1


"--------------gruvbox
"let g:gruvbox_transparent_bg = 1
let g:gruvbox_italic = 1
let g:gruvbox_bold = 0
let g:gruvbox_contrast_dark = "hard"
"colorscheme sonokai
colorscheme gruvbox
highlight Normal guibg=none
