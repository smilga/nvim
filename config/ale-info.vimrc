" My first vimscript
" To show ale errors in nvim floating window on hover
" Needs a lot of cleaning and refacturing
" May cause errors and bugs
" But for now it works
let g:extend_ale_win_id = 0
let g:extend_ale_cursor_err = 0

autocmd CursorMoved * call AleCurorsPreview()

" TODO remove in insert mode
" TODO can I get information not from highlight but from ale errors?
"
function! AleCurorsPreview() abort
    let l:highlights = get(b:, 'ale_highlight_items', [])
    let [l:lnum, l:col] = getpos('.')[1:2]
    let l:bufnr = bufnr('')

    let g:extend_ale_cursor_err = 0

    for l:highlight in l:highlights
        if l:highlight['bufnr'] == l:bufnr
            if s:CursorMatchHighlight(l:highlight, l:lnum, l:col)
                let g:extend_ale_cursor_err = 1
                let l:lines = split(l:highlight['text'], "\n")

                if !g:extend_ale_win_id
                    let g:extend_ale_win_id = s:ShowWindow(l:lines, l:col, l:lnum)
                else
                    :call s:UpdateWindow(l:lines, l:col, l:lnum)
                endif
                "call ale#floating_preview#Show(l:lines)
            endif
        endif
    endfor

    if !g:extend_ale_cursor_err && g:extend_ale_win_id
        call nvim_win_close(g:extend_ale_win_id, 1)
        let g:extend_ale_win_id = 0
    endif

endfunction

function! s:CursorMatchHighlight(highlight, lnum, col)
    let l:multiline = a:highlight['lnum'] < a:highlight['end_lnum']

    if !l:multiline
        return a:highlight['lnum'] == a:lnum && a:highlight['col'] <= a:col && a:highlight['end_col'] >= a:col
    endif

    " first line
    if a:highlight['lnum'] == a:lnum && a:highlight['col'] <= a:col
        return 1
    endif

    " last line
    if a:highlight['end_lnum'] == a:lnum && a:highlight['col'] >= a:col
        return 1
    endif

    " middle lines how all
    if a:highlight['lnum'] < a:lnum && a:highlight['end_lnum'] > a:lnum
        return 1
    endif

    return 0
endfunction

function! s:PadString(i, string)
    return ' ' + string
endfunction

function! s:ShowWindow(lines, col, line)
    " Define the size of the floating window
    let width = 50
    let height = 10

    " Create the scratch buffer displayed in the floating window
    let buf = nvim_create_buf(v:false, v:true)
    let l:lines = map(copy(a:lines), {key,val -> "  " . val})
    :echom l:lines
    call nvim_buf_set_lines(buf, 1, -1, v:false, l:lines)

    let [l:width, l:height] = s:WinDimensions(a:lines)
    " Create the floating window
    let opts = {'relative': 'win',
                \ 'width': l:width,
                \ 'height': l:height,
                \ 'bufpos': [a:line -1, a:col],
                \ 'anchor': 'NW',
                \ 'style': 'minimal',
                \ }

    return nvim_open_win(buf, 0, opts)
endfunction

function! s:UpdateWindow(lines, col, line)
    let [l:width, l:height] = s:WinDimensions(a:lines)
    let opts = {'relative': 'win',
                \ 'width': l:width,
                \ 'height': l:height,
                \ 'bufpos': [a:line -1, a:col],
                \ 'anchor': 'NW',
                \ 'style': 'minimal',
                \ }

    call nvim_win_set_config(g:extend_ale_win_id, opts)
endfunction

function! s:WinDimensions(lines)
    let l:height = 0
    let l:width = 0

    for l:line in a:lines
        let l:height = l:height + 1
        let l:lwidth = strdisplaywidth(l:line)
        if l:lwidth > l:width
            let l:width = l:lwidth
        endif
    endfor

    return [l:width + 4, l:height + 2]
endfunction
