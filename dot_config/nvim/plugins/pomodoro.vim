Plug 'adelarsq/vim-pomodoro'

" Duration of a pomodoro in minutes (default: 25)
let g:pomodoro_time_work = 25
" Duration of a break in minutes (default: 5)
let g:pomodoro_time_slack = 5
" Log completed pomodoros, 0 = False, 1 = True (default: 0)
let g:pomodoro_do_log = 1
" Path to the pomodoro log file (default: /tmp/pomodoro.log)
let g:pomodoro_log_file = "/tmp/pomodoro.log"
" Notifications outside vim can be enabled through the option
" g:pomodoro_notification_cmd. For instance, to play a soundfile after each
" completed pomodoro or break, add something like
"     ```let g:pomodoro_notification_cmd = 'mpg123 -q ~/.vim/pomodoro-notification.mp3'```
" to your ~/.vimrc. System-wide notifications can, for instance, be done via
" zenity and the option;
"     ```let g:pomodoro_notification_cmd = 'zenity --notification --text="Pomodoro f```

" To display the remaining time of a pomodoro in your statusline, add;
" set statusline=%#ErrorMsg#%{PomodoroStatus()}%#StatusLine#
