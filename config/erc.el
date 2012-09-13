(require 'erc)

(setq erc-autojoin-channels-alist
      '((".*\\.freenode.net" "#clojure" "#python-br" "#clojure-br")))

(setq erc-current-nick-highlight-type 'nick)
;; (setq erc-keywords '("regex"))

(setq erc-track-exclude-types '("JOIN" "PART" "QUIT" "NICK" "MODE"))
(setq erc-track-use-faces t)
(setq erc-track-faces-priority-list
      '(erc-current-nick-face erc-keyword-face))
(setq erc-track-priority-faces-only 'all)

(setq erc-fill-function 'erc-fill-static)
(setq erc-fill-static-center 15)

(setq erc-timestamp-format "%H:%M ")
