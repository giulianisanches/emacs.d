(autoload 'python-mode "python-mode" "Python Mode." t)

(require 'ipython)
(require 'jedi)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq py-electric-colon-active t)

(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(setq jedi:key-complete (kbd "C-A-SPC"))
