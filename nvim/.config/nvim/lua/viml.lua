vim.cmd([[




function! s:project_name()
  let l:cwd = resolve(getcwd())
  let l:cwd = substitute(l:cwd, '^'.$HOME.'/', '', '')
  let l:cwd = fnamemodify(l:cwd, ':p:gs?/?_?')
  let l:cwd = substitute(l:cwd, '^\.', '', '')
  return l:cwd
endfunction



" setted color for quick scope plugin
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guibg='#434C5E' gui=underline cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary  gui=underline cterm=underline
augroup END

let g:session_autosave_to = fnameescape(s:project_name()) 






function! s:setupConflicted()
  set stl+=%{ConflictedVersion()}
  " Resolve and move to next conflicted file.
  nnoremap ]m :GitNextConflict<cr>
endfunction

" Now possible to do fg to find with grep in directory
function s:coc_list_current_dir(args)
  let node_info = CocAction('runCommand', 'explorer.getNodeInfo', 0)
  if node_info isnot v:null && node_info['expandable']
    execute 'Clap 'a:args . ' ' . node_info['fullpath']
  else
    execute 'Clap 'a:args . ' ' . fnamemodify(node_info['fullpath'], ':h')
  endif
endfunction

function s:init_explorer()
  nmap <buffer> <Leader>fg :call <SID>coc_list_current_dir('grep2')<CR>
  nmap <buffer> <Leader>fp :call <SID>coc_list_current_dir('providers')<CR>
  nmap <buffer> <Leader>ff :call <SID>coc_list_current_dir('files')<CR>
endfunction


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command ]} "'--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}'
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
        \   'converters': [incsearch#config#fuzzyword#converter()],
        \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
        \   'keymap': {"\<CR>": '<Over>(easymotion)'},
        \   'is_expr': 0,
        \   'is_stay': 1
        \ }), get(a:, 1, {}))
endfunction





augroup mygroup



  au GUIEnter * simalt ~x
  au BufNewFile,BufRead *.ejs set filetype=html

  autocmd FileType scss setl iskeyword+=@-@

  "  autocmd CursorHold * silent syntax sync fromstart

  "  " Highlight symbol under cursor on CursorHold (colors )
  autocmd CursorHold * silent call CocActionAsync('highlight')

  autocmd!
  " Setup formatexpr specified filetype(s).
  " autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

  autocmd FileType apache setlocal commentstring=#\ %s


  " autocmd CursorMoved,CursorMovedI,BufEnter *
  " \   if exists('*IsStyledDefinition') |
  " \     if IsStyledDefinition(line('.')) && g:emmetJsx |
  " \       call coc#config('emmet.includeLanguages', { 'javascript': 'css' } ) |
  " \       let g:emmetJsx = 0 |
  " \     elseif !IsStyledDefinition(line('.')) && !g:emmetJsx |
  " \       call coc#config('emmet.includeLanguages', { 'javascript': 'javascriptreact' } ) |
  " \       let g:emmetJsx = 1 |
  " \     endif |
  " \   endif

  autocmd CursorMoved,BufEnter *
        \   if &filetype == 'coc-explorer' |
        \     execute 'norm 0' |
        \   endif




  autocmd CmdLineEnter : let g:prev_hls = &hlsearch
  autocmd CmdLineChanged : let g:cmd = getcmdline() |
        \  if g:cmd =~# '^%\\?S.*/' |
        \    let g:splitcmd = split(g:cmd, '/') |
        \    let g:search_pat = len(g:splitcmd) >= 2 ? substitute(join(g:splitcmd[0:1], '/'), '^%', '', '') : '' |
        \    if !empty(g:search_pat) |
        \      try |
        \        silent exec 'norm \<Cmd>set hls|0verbose ' . g:search_pat . '/\<CR>' |
        \        catch /^Vim\%((\a\+)\)\=:E/ |
        \      endtry |
        \      silent exec 'norm N' |
        \      redraw! |
        \    endif |
        \  endif
  autocmd CmdLineLeave : let &hlsearch = g:prev_hls
  " au BufWritePost * nested checktime %

  autocmd FileType coc-explorer call <SID>init_explorer()

  autocmd User VimConflicted call s:setupConflicted()

augroup end




]])
