(load "cperl-mode")
(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))

(setq cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil)
