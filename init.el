;; Thanks to:
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; Eden Cardim (http://edencardim.com)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-message t)


(setq default-frame-alist
      '((top . 0) (left . 250)
        (width . 80) (height . 36)))

(setq initial-scratch-message nil)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq major-mode 'text-mode)
(setq kill-whole-line t)
(setq default-truncate-lines t)
(setq truncate-partial-width-windows nil)

(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :font "Consolas-11"))

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(prefer-coding-system 'utf-8)

(line-number-mode 1)
(column-number-mode 1)

(show-paren-mode 1)
(setq show-paren-delay 0)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/extra-pkg")

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (add-to-list 'exec-path "/usr/local/bin")
  (add-to-list 'exec-path "/usr/local/share/python"))

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(require 'autopair)
(autopair-global-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'iswitchb)
(iswitchb-mode 1)
(add-to-list 'iswitchb-buffer-ignore "^\\*")

(require 'uniquify)

(require 'epa-file)
(epa-file-enable)

(require 'paredit)
(require 'org)

(load "config/indentation")
(load "config/theme")
(load "config/hooks")
(load "config/defuns")
(load "config/keymaps")
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
