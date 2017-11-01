let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_echo = 0
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 0
let g:bufferline_solo_highlight = 0
let g:bufferline_fname_mod = ':t:r'

function! MyBufferline()
  call bufferline#refresh_status()
  let b = g:bufferline_status_info.before
  let c = g:bufferline_status_info.current
  let a = g:bufferline_status_info.after
  return b . c . a
endfunction

