;; Create a template toolkit mode derived from html-mode
;; reference: http://blog.alexn.org/2008/11/emacs-textmate-like-snippets.html

;; specifies that this script provide an emacs module
(provide 'template-toolkit-mode)

;; defines a derived editing mode, inheriting from html-mode
(define-derived-mode template-toolkit-mode html-mode "Template Toolkit" nil)