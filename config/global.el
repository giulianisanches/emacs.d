(setq default-frame-alist
      '((top . 0) (left . 250)
        (width . 80) (height . 36)))

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq default-major-mode 'text-mode)
(setq kill-whole-line t)
(setq default-truncate-lines t)

(if (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :font "Consolas-11")
)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(prefer-coding-system 'utf-8)

(line-number-mode 1)
(column-number-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(show-paren-mode 1)
(setq show-paren-delay 0)

(require 'autopair)
(autopair-global-mode)

(require 'yasnippet)
(yas/global-mode 1)

(require 'iswitchb)
(iswitchb-mode 1)
(add-to-list 'iswitchb-buffer-ignore "^\\*")

(require 'tramp)
(if (eq system-type 'windows-nt)
    (setq tramp-default-method "plink")
  (setq tramp-default-method "sftp"))

(require 'uniquify)
(require 'eproject)
(require 'eproject-extras)
(require 'iedit)

(require 'epa-file)
(epa-file-enable)

(require 'clojure-mode)
(require 'paredit)
(require 'org)
