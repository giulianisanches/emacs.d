;; perlcritic-mode
(autoload 'perlcritic        "perlcritic" "" t)
(autoload 'perlcritic-region "perlcritic" "" t)
(autoload 'perlcritic-mode   "perlcritic" "" t)

(eval-after-load "cperl-mode"
  '(add-hook 'cperl-mode-hook 'perlcritic-mode))
(eval-after-load "perl-mode"
  '(add-hook 'cperl-mode-hook 'perlcritic-mode))

;; ;; perltidy-mode
(autoload 'perltidy "perltidy-mode" nil t)
(autoload 'perltidy-mode "perltidy-mode" nil t)
(autoload 'perltidy-unless-readonly-mode "perltidy-mode" nil t)

(eval-after-load "cperl-mode"
  '(add-hook 'cperl-mode-hook 'perltidy-unless-readonly-mode))
(eval-after-load "perl-mode"
  '(add-hook 'cperl-mode-hook 'perltidy-unless-readonly-mode))

;; pod-mode
(require 'pod-mode)
(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.pod$" . pod-mode))))
(add-hook 'pod-mode-hook 'font-lock-mode)

;; cperl-mode
(load "cperl-mode")
(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))

(setq cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil)