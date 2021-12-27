Plug 'justinmk/vim-sneak'

" map f <Plug>Sneak_s
" map F <Plug>Sneak_S
let g:sneak#f_reset = 1 "1 makes f reset last sneak search; which allows using <;>
let g:sneak#t_reset = 1 " same as above for t
let g:sneak#t_next = 1 "enable sneak-clever-s; makes pressing <s> go to next match
let g:sneak#absolute_dir = 1 "1 makes ; or , always go forward and back respectively
let g:sneak#use_ic_scs = 1 "1 makes case insensitive/smartcase
let g:sneak#map_netrw = 0 "give netrw special mappings
let g:sneak#label = 0 "Enable label mode
let g:sneak#label_esc = "\<Space>" "Exit label mode with \<Space>
let g:sneak#target_labels = ";sftunq/SFGHLTUNRMQZ?0" "list of chars used for labels
let g:sneak#prompt = '>' "Prompt used for sneak mode
