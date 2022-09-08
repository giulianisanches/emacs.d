;;; markdown.el --- markdown-mode configuration
;;
;;; Commentary:
;;
;;; Code:

(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.text|\\.mdw?\\'" . markdown-mode))
(setq markdown-italic-underscore t)
(setq markdown-command "pandoc")
(setq markdown-asymmetric-header t)

;;; markdown.el ends here
