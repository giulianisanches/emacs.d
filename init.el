;; Thanks to:
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; Eden Cardim (http://edencardim.com)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-message t)

(setq default-frame-alist
      '((width . 80) (height . 40)))

(setq initial-scratch-message nil)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq major-mode 'text-mode)
(setq kill-whole-line t)
(setq default-truncate-lines t)
(setq truncate-partial-width-windows nil)

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
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/extra")

;; The code below will install all the extensions that do not exist in the
;; directory extra-pkg
(if (not package-archive-contents)
  (package-refresh-contents))

(setq required-packages
      '(autopair
        s
        cperl-mode
        projectile
        exec-path-from-shell
        auto-complete
        markdown-mode
        dash
        paredit
        pkg-info
        twittering-mode
        web-mode
        yasnippet
        yaml-mode
        flx-ido
        dracula-theme))

(dolist (package required-packages)
  (if (not (package-installed-p package))
      (package-install package)))

(setq custom-file "~/.emacs.d/config/custom/custom.el")
(load custom-file)

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize)
  ;; (load erc)
  )

(require 'autopair)
(autopair-global-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'ido)
(ido-mode t)
;; (ido-mode 'buffers)
;; (setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
;;                            "*Messages*" "Async Shell Command"))

(require 'uniquify)

(require 'epa-file)
(epa-file-enable)

(require 'paredit)
(require 'org)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(when (eq system-type 'windows-nt)
  (load "custom/windows"))

(load "custom/indentation")
(load "custom/theme")
(load "custom/hook")
(load "custom/keymap")
(load "custom/project")
(load "custom/recentf")
(load "custom/twitter")
(load "custom/tramp")
(load "custom/perl")
(load "custom/markdown")
