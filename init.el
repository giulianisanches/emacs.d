;; Heavily inspired for
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; And some tips from Eden Cardim (http://edencardim.com)

(add-to-list 'load-path "~/.emacs.d")

(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor") (normal-top-level-add-subdirs-to-load-path))

(load "config/global")
(load "config/indentation")
(load "config/hooks")
(load "config/defuns")
(load "config/keymaps")
(load "config/projects")
(load "config/python")
(load "config/recentf")
(load "config/theme")
(load "config/sql")
(load "vendor/nxhtml/autostart.el")

(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)
