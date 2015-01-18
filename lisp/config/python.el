(require 'jedi)

(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(setq jedi:setup-keys t)
(setq jedi:key-complete (kbd "C-S-!"))
