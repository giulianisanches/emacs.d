(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq default-major-mode 'text-mode)
(setq kill-whole-line t)

(defalias 'yes-or-no-p 'y-or-n-p)

(prefer-coding-system 'utf-8)

(line-number-mode 1)
(column-number-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'textmate)
(tm/initialize)