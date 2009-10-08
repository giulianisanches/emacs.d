(autoload 'template-toolkit-mode "template-toolkit-mode" nil t)
(autoload 'template-minor-mode "template-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.tt$" . template-toolkit-mode))
(add-hook 'html-mode-hook 'template-minor-mode)