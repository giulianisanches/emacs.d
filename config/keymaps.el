(global-set-key "\C-x\C-f" 'find-file-save-default-directory)
(global-set-key (kbd "RET") 'newline-and-indent)

;; Look at config/defuns.el
(global-set-key [C-S-right] 'shift-right)
(global-set-key [C-S-left] 'shift-left)

;; Comment and uncomment
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

;; Use ctrl tab to change buffer.
(global-set-key [C-tab] 'buffer-menu)