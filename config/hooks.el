(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'find-file-hook 'trac-wiki-auto-mode-function)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
