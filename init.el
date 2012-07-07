;; Heavily inspired for
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; And some tips from Eden Cardim

(add-to-list 'load-path "~/.emacs.d")

(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor") (normal-top-level-add-subdirs-to-load-path))

(load "config/global")
(load "config/defuns")
(load "config/keymaps")
(load "config/indentation")
(load "config/hooks")
(load "config/theme")
(load "config/perl")
(load "config/yasnippet")
(load "config/modes")
(load "config/erc")
(load "config/gnus")
(load "config/projects")
(load "config/iswitchb")

(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)