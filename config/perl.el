(load-file "~/.emacs.d/vendor/cperl-mode.el")
(defalias 'perl-mode 'cperl-mode)

(require 'perltidy)
(require 'perlcritic)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))

(setq cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil)
