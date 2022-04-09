vim.cmd [[
colorscheme gruvbox-material

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e

hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi CursorLine guibg=None
highlight Normal guibg=none
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
hi TelescopeBorder guifg=#5eacd
hi HighlightedyankRegion term=bold ctermbg=0 guibg=#EEE8A9 

highlight GitGutterAdd    guifg=#00b894 ctermfg=2
highlight GitGutterChange guifg=#fdcb6e ctermfg=3
highlight GitGutterDelete guifg=#ff7675 ctermfg=1

hi BufferCurrentSign guifg=#5eacd3

]]

-- colorscheme gruvbox-material "gruvbox-material "night-owl  nord onedark candid palenight gruvbox-material

