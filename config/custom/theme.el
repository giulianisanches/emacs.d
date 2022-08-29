;;; theme.el -- Emacs theme configuration

;;; Commentary:

;; the following code is from: http://stackoverflow.com/questions/9840558/why-cant-emacs-24-find-a-custom-theme-i-added/15381087#15381087

;;; Code:

(require 'dash)
(require 's)

(-each
   (-map
      (lambda (item)
      (format (concat user-emacs-directory "elpa/%s") item))
   (-filter
      (lambda (item) (s-contains? "theme" item))
      (directory-files (concat user-emacs-directory "elpa"))))
   (lambda (item)
      (add-to-list 'custom-theme-load-path item)))

(load-theme 'solarized-dark t)

;;; theme.el ends here
