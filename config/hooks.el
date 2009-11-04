(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'find-file-hook 'trac-wiki-auto-mode-function)