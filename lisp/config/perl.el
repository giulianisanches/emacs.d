(require 'cperl-mode)
(require 'pod-mode)

;; cperl-mode
(defalias 'perl-mode 'cperl-mode)

(eval-after-load "cperl-mode"
  '(add-hook 'cperl-mode-hook 'perlcritic-mode))

;; perlcritic-mode
(autoload 'perlcritic        "perlcritic" "" t)
(autoload 'perlcritic-region "perlcritic" "" t)
(autoload 'perlcritic-mode   "perlcritic" "" t)

;; ;; perltidy-mode
(autoload 'perltidy "perltidy-mode" nil t)
(autoload 'perltidy-mode "perltidy-mode" nil t)

(eval-after-load "cperl-mode"
   '(add-hook 'cperl-mode-hook 'perltidy-mode))

;; pod-mode
(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.pod$" . pod-mode))))
(add-hook 'pod-mode-hook 'font-lock-mode)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))

(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil)
