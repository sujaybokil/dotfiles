let g:auto_session_enable_last_session=0
let g:auto_save_enabled=0
let g:auto_session_enabled=1
let g:auto_restore_enabled=0
let g:auto_session_pre_save_cmds = ["NvimTreeClose"]
let g:auto_session_post_restore_cmds = ["NvimTreeRefresh"]

lua require('auto-session').setup()
lua require('session-lens').setup() 



