;; the following code is from: http://stackoverflow.com/questions/9840558/why-cant-emacs-24-find-a-custom-theme-i-added/15381087#15381087

(require 'dash)
(require 's)

(-each
   (-map
      (lambda (item)
      (format "~/.emacs.d/elpa/%s" item))
   (-filter
      (lambda (item) (s-contains? "theme" item))
      (directory-files "~/.emacs.d/elpa/")))
   (lambda (item)
      (add-to-list 'custom-theme-load-path item)))

(load-theme 'zenburn t)
