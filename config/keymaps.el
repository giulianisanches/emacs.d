(global-set-key (kbd "RET") 'newline-and-indent)

;; Look at config/defuns.el
(global-set-key [C-S-right] 'shift-right)
(global-set-key [C-S-left] 'shift-left)

;; Recent files
(global-set-key (kbd "C-c f") 'recentf-open-files)
(global-set-key (kbd "C-c r") 'revert-buffer)

;; See config/defuns.el for details
(global-set-key (kbd "M-;") 'comment-dwin-line)
(global-set-key (kbd "<C-tab>") 'buffer-menu)
