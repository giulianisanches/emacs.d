(autoload 'markdown-mode "markdown-mode" "Major mode for Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.text|\\.mdw?\\'" . markdown-mode))
(setq markdown-hr-string "----")
(setq markdown-italic-underscore t)
(setq markdown-command "pandoc")

(add-hook 'markdown-mode-hook (lambda () (setq truncate-lines t)))
