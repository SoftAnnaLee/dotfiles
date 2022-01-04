Plug 'mcchrish/zenbones.nvim'
" Optionally install Lush. Allows for more configuration or extending the colorscheme
" If you don't want to install lush, make sure to set g:zenbones_compat = 1
" In Vim, compat mode is turned on as Lush only works in Neovim.
Plug 'rktjmp/lush.nvim'

set termguicolors
set background=dark

let g:zenbones_darken_comments = 45

" let g:nordbones_lightness                          = nil   "Change background colors lightness. Options: 'bright', 'dim'.
" let g:nordbones_darkness                           = nil   "Change background colors darkness. Options: 'stark', 'warm'.
let g:nordbones_solid_vert_split                   = "false" "Solid |hl-VertSplit| background.
let g:nordbones_solid_line_nr                      = "false" "Solid |hl-LineNr| background.
let g:nordbones_solid_float_border                 = "false" "Make |hl-FloatBorder| have a more distinguishable background highlight.
let g:nordbones_darken_noncurrent_window           = "false" "Make non-current window background darker than Normal.
let g:nordbones_lighten_noncurrent_window          = "false" "Make non-current window background lighter than Normal.
let g:nordbones_italic_comments                    = "true" "Make comments italicize.
let g:nordbones_darken_comments                    = 38    "Percentage to darken comments relative to Normal bg.
let g:nordbones_lighten_comments                   = 38    "Percentage to lighten comments relative to Normal bg.
let g:nordbones_darken_non_text                    = 25    "Percentage to darken |hl-NonText| relative to Normal bg.
let g:nordbones_lighten_non_text                   = 30    "Percentage to lighten |hl-NonText| relative to Normal bg.
let g:nordbones_darken_line_nr                     = 33    "Percentage to darken |hl-LineNr| relative to Normal bg.
let g:nordbones_lighten_line_nr                    = 35    "Percentage to lighten |hl-LineNr| relative to Normal bg.
let g:nordbones_darken_cursor_line                 = 3     "Percentage to darken |hl-CursorLine| relative to Normal bg.
let g:nordbones_lighten_cursor_line                = 4     "Percentage to lighten |hl-CursorLine| relative to Normal bg.
let g:nordbones_colorize_diagnostic_underline_text = "false" "Colorize the fg of DiagnosticUnderline*.
let g:nordbones_transparent_background             = "true" "Make background transparent.

augroup ZeonbonesOverrides
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme nordbones
augroup end
