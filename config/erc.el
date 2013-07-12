(require 'erc)

(load "~/.emacs.d/config/erc-auth.el")

(setq erc-autojoin-channels-alist
      '((".*\\.freenode.net" "#clojure" "#clojure-br" "#lisp")
        ("irc.perl.org" "#sao-paulo.pm" "#rio-pm")))

;;(erc :server "irc.freenode.net" :port "6667" :nick ircnick)
;;(erc :server "irc.perl.org" :port "6667" :nick ircnick)

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
