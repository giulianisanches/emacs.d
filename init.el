;; Thanks to:
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; Eden Cardim (http://edencardim.com)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-message t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/vendor")

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (add-to-list 'exec-path "/usr/local/bin")
  (add-to-list 'exec-path "/usr/local/share/python"))

(load "config/global")
(load "config/indentation")
(load "config/hooks")
(load "config/defuns")
(load "config/keymaps")
(load "config/theme")
(load "config/projects")
(load "config/python")
(load "config/recentf")
(load "config/twitter")
(load "config/tramp")
(load "config/clojure")
(load "config/perl")
(load "config/markdown")

;; i do not have plans to use erc on windows for a while
(if (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
    (load "config/erc"))

(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)
