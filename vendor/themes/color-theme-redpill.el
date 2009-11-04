;; http://pognation.wordpress.com/2009/02/23/configurando-o-emacs-23-emacs-cvs-no-archlinux-parte-1/
(defun color-theme-redpill ()
  "Deep Blue theme with #242424 background."
  (interactive)
  (color-theme-deep-blue)
  (let ((color-theme-is-cumulative t))
  (color-theme-install
   '(color-theme-redpill
     ;; General
      ((background-color . "#242424"))
     (cperl-array-face ((t (:bold t :foreground "light salmon" :weight bold))))
     (cperl-hash-face ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
     (cperl-nonoverridable-face ((t (:foreground "aquamarine"))))
    ))
  )
)

(provide 'color-theme-redpill)