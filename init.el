;; Thanks to:
;; Ryan McGuire emacs cofiguration bundle: http://github.com/EnigmaCurry/emacs
;; Chris Wanstrath http://github.com/defunkt/emacs
;; Eden Cardim (http://edencardim.com)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)

(prefer-coding-system 'utf-8)

(line-number-mode 1)
(column-number-mode 1)

(show-paren-mode 1)

(electric-pair-mode 1)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq major-mode 'text-mode)
(setq kill-whole-line t)

(setq vc-follow-symlinks nil)

(setq show-paren-delay 0)

(defvar local-default_font)
(setq local-default_font
      (cond ((eq system-type 'windows-nt) "Consolas-16")
            ((eq system-type 'gnu/linux) "DejaVu Sans Mono-14")
            ((eq system-type 'darwin) "Monaco-16")
            (t nil)))

(when window-system
  (set-frame-size (selected-frame) 110 50))

(when local-default_font
  (add-to-list 'default-frame-alist `(font . ,local-default_font)))

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "extra"))

;; The code below will install all the extensions that do not exist in the
;; directory extra-pkg
(if (not package-archive-contents)
  (package-refresh-contents))

(defvar required-packages)
(setq required-packages
      '(s
        magit
        projectile
        exec-path-from-shell
        markdown-mode
        counsel
        dash
        ag
        pkg-info
        web-mode
        yasnippet
        yaml-mode
        flycheck
        solarized-theme))

(dolist (package required-packages)
  (if (not (package-installed-p package))
      (package-install package)))

(setq custom-file (concat user-emacs-directory "config/custom/custom.el"))
(load custom-file)

(when (or (eq system-type 'darwin) (eq system-type 'gnu/linux))
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize)
  ;; (load erc)
  )

(require 'yasnippet)
(yas-global-mode 1)

(require 'uniquify)

(require 'epa-file)
(epa-file-enable)

(require 'org)

(global-flycheck-mode)

(load "custom/ivy")
(load "custom/indentation")
(load "custom/theme")
(load "custom/hook")
(load "custom/keymap")
(load "custom/project")
(load "custom/recentf")
(load "custom/tramp")
(load "custom/perl")
(load "custom/markdown")
