(require 'yasnippet)
(yas/initialize)

(setq yas/root-directory '("~/.emacs.d/snippets"))
(mapc 'yas/load-directory yas/root-directory)