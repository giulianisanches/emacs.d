;; Heavily inspired for
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; And some tips from Eden Cardim (http://edencardim.com)

(add-to-list 'load-path "~/.emacs.d")

(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor") (normal-top-level-add-subdirs-to-load-path))

(load "config/global")
(load "config/defuns")
(load "config/keymaps")
(load "config/indentation")
(load "config/hooks")
(load "config/theme")
(load "config/projects")
(load "config/python")
(load "config/recentf")

(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)
