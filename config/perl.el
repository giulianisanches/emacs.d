(defalias 'perl-mode 'cperl-mode)
(require 'perltidy)

(setq cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil)
