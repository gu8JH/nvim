nnoremap <localleader>a :AIChat<CR>
xnoremap <localleader>a :AIChat<CR>

" :AI
" - engine: complete | chat - 请参阅下面的部分如何配置聊天引擎
" - options.request_timeout: 请求超时时间，秒
" - ui.paste_mode: 使用粘贴模式 paste mode (请参阅下面的注释中的更多信息)
" let g:vim_ai_complete = {
" \  "engine": "complete",
" \  "options": {
" \    "request_timeout": 20,
" \  },
" \  "ui": {
" \    "paste_mode": 1,
" \  },
" \}

" :AIEdit
" - engine: complete | chat - 请参阅下面的部分如何配置聊天引擎
" - options.request_timeout: 请求超时时间，秒
" - ui.paste_mode: 使用粘贴模式 paste mode (请参阅下面的注释中的更多信息)
" let g:vim_ai_edit = {
" \  "engine": "complete",
" \  "options": {
" \    "request_timeout": 20,
" \  },
" \  "ui": {
" \    "paste_mode": 1,
" \  },
" \}

" 此提示指示模型使用语法突出显示
" let s:initial_chat_prompt =<< trim END
" >>> system
"
" You are a general assistant.
" If you attach a code block add syntax type after ``` to enable syntax highlighting.
" END
"
" " :AIChat
" " - options.initial_prompt: 给 GPT 的 prompt，比如上面的 s:initial_chat_prompt
" " - options.request_timeout: 请求超时时间，秒
" " - ui.populate_options: 将 [chat-options] 展示在聊天窗口的头部
" " - ui.open_chat_command: 预设值 (preset_below, preset_tab, preset_right) 或自定义命令
" " - ui.scratch_buffer_keep_open: 在 vim 会话中重用已打开的 chat 缓冲区
" " - ui.paste_mode: 使用粘贴模式 paste mode (请参阅下面的注释中的更多信息)
" let vim_ai_chat = {
" \  "options": {
" \    "request_timeout": 20,
" \    "initial_prompt": s:initial_chat_prompt,
" \  },
" \  "ui": {
" \    "code_syntax_enabled": 1,
" \    "populate_options": 0,
" \    "open_chat_command": "preset_below",
" \    "scratch_buffer_keep_open": 0,
" \    "paste_mode": 1,
" \  },
" \}

" Notes:
" ui.paste_mode
" - 因为 GPT 基本使用代码块响应，所以禁用代码缩进
" - 在 vim 的帮助 `:help Paste` 中了解更多信息
