(require 'nrepl)

;;(setq nrepl-lein-command "/usr/local/bin/lein")

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(setq nrepl-popup-stacktraces nil)

(add-to-list 'same-window-buffer-names "*nrepl*")
