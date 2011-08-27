" Santa Zhang's personal vim color scheme


" set color scheme
set background=light


" personalized color scheme, based on peachpuff
hi clear
let g:colors_name="SantaZhang"

hi SpecialKey term=bold ctermfg=4 guifg=Blue
hi NonText term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory term=bold ctermfg=4 guifg=Blue
hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
hi IncSearch term=reverse cterm=reverse gui=reverse
hi Search term=reverse ctermbg=3 guibg=Gold2
hi MoreMsg term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg term=bold cterm=bold gui=bold
hi LineNr term=underline ctermfg=6 guifg=Red3
hi Question term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold guifg=White guibg=Black
hi StatusLineNC term=reverse cterm=reverse gui=bold guifg=PeachPuff guibg=Gray45
hi VertSplit term=reverse cterm=reverse gui=bold guifg=White guibg=Gray45
hi Title term=bold ctermfg=5 gui=bold guifg=DeepPink3
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey80 guibg=fg
hi VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg term=standout ctermfg=1 gui=bold guifg=Red
hi WildMenu term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded term=standout ctermfg=4 ctermbg=7 guifg=Black guibg=#e3c1a5
hi FoldColumn term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Gray80
hi DiffAdd term=bold ctermbg=4 guibg=White
hi DiffChange term=bold ctermbg=5 guibg=#edb5cd
hi DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=LightBlue guibg=#f6e8d0
hi DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=#ff8060
hi Cursor guifg=bg guibg=fg

" Colors for syntax highlighting
hi Comment term=bold ctermfg=2 guifg=#406090
hi Constant term=underline ctermfg=1 guifg=#c00058
hi Special term=bold ctermfg=5 guifg=SlateBlue
hi Identifier term=underline ctermfg=0 guifg=DarkCyan
hi Statement term=bold ctermfg=5 gui=bold guifg=Brown
hi PreProc term=underline ctermfg=5 guifg=Magenta3
hi Type term=underline ctermfg=4 gui=bold guifg=SeaGreen
hi Ignore cterm=bold ctermfg=7 guifg=bg
hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
hi Todo term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow

" added for c.vim (syntax)
hi Include term=bold ctermfg=4

" #ifdef
hi PreCondit term=standout ctermfg=5
hi Macro term=standout ctermfg=5
hi Define term=standout ctermfg=4
hi Float term=bold ctermfg=4
hi Boolean term=bold ctermfg=4
hi Number term=bold ctermfg=4
hi String term=bold ctermfg=2
hi SpecialChar term=bold ctermfg=1
hi Character term=bold ctermfg=1
hi Function term=bold ctermfg=4
hi StorageClass term=bold ctermfg=5
hi Structure term=bold ctermfg=4

hi Typedef term=bold ctermfg=7
hi Operator term=bold ctermfg=5

" for, while loops
hi Repeat term=bold ctermfg=1

" if, else
hi Conditional term=bold ctermfg=1

hi Normal term=standout ctermfg=4
hi Label term=standout ctermfg=5
