"--------------Sonokai settings
        if has('termguicolors')
          set termguicolors
        endif

        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'default'
        let g:sonokai_enable_italic = 1
        let g:sonokai_disable_italic_comment = 1
        let g:sonokai_transparent_background = 1

"--------------gruvbox-material
        let g:gruvbox_material_background = 'soft'
        let g:gruvbox_material_enable_italic = 1
        let g:gruvbox_material_disable_italic_comment = 1
        let g:gruvbox_material_transparent_background = 0

"--------------gruvbox
        let g:gruvbox_transparent_bg = 1
        let g:gruvbox_italic = 1

colorscheme sonokai
"colorscheme wal
"colorscheme gruvbox-material
"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
