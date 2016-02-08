;; Thanks to:
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; Eden Cardim (http://edencardim.com)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-message t)

(setq default-frame-alist
      '((width . 80) (height . 50)))

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
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("marmelade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/extra")

;; The code below will install all the extensions that do not exist in the
;; directory extra-pkg
(when (not package-archive-contents)
  (package-refresh-contents))

(setq required-packages
      '(autopair
        s
        cperl-mode
        eproject
        exec-path-from-shell
        markdown-mode
        dash
        paredit
        pkg-info
        twittering-mode
        ecb
        web-mode
        yasnippet
        color-theme-solarized))

(dolist (package required-packages)
  (if (not (package-installed-p package))
      (package-install package)))

(setq custom-file "~/.emacs.d/config/emacs/custom.el")
(load custom-file)

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (add-to-list 'exec-path "/usr/local/bin")
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(require 'autopair)
(autopair-global-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'ido)
(ido-mode 'buffers) ;; only use this line to turn off ido for file names!
;; (setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
;;                            "*Messages*" "Async Shell Command"))

(require 'uniquify)

(require 'epa-file)
(epa-file-enable)

(require 'paredit)
(require 'org)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(load "emacs/indentation")
(load "emacs/theme")
(load "emacs/hooks")
(load "emacs/keymaps")
(load "emacs/projects")
(load "emacs/recentf")
(load "emacs/twitter")
(load "emacs/tramp")
(load "emacs/perl")
(load "emacs/markdown")
(load "emacs/python")

;; (if (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
;;     (load "erc"))
