(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.text|\\.mdw?\\'" . markdown-mode))
(setq markdown-hr-string "----")
(setq markdown-italic-underscore t)
