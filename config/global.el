(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
			      64 68 72 76 80 84 88 92 96 100 104 108 112
			      116 120))

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq scroll-step 1)
(setq default-major-mode 'text-mode)
(setq kill-whole-line t)

(defalias 'yes-or-no-p 'y-or-n-p)

(prefer-coding-system 'utf-8)
(set-frame-size (selected-frame) 80 36)
(set-frame-position (selected-frame) 250 0)

(line-number-mode 1)
(column-number-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'textmate)
(tm/initialize)