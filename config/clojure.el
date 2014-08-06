(require 'clojure-mode)
(require 'cider)

;(setq nrepl-lein-command "/Volumes/MacintoshHD/Clojure/lein")

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(setq nrepl-hide-special-buffers t)
(setq cider-show-error-buffer nil)
(setq cider-repl-pop-to-buffer-on-connect nil)
