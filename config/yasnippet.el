(require 'yasnippet)
(yas/initialize)

(setq yas/root-directory '("~/.emacs.d/config/snippets"
      "~/.emacs.d/vendor/yasnippet/snippets"))
(mapc 'yas/load-directory yas/root-directory)