;;; project.el --- projectile configuration

;;; Commentary:

;;; Code:

(require 'projectile)
(require 'f)

;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-project-search-path '(("~/dev/src/" . 3)))

(projectile-mode +1)

(defun pyvenv-autoload ()
  "Automatically activates pyvenv version if .venv directory exists."
  (f-traverse-upwards
   (lambda (path)
     (let ((venv-path (f-expand ".venv" path)))
       (if (f-exists? venv-path)
           (progn
             (pyvenv-activate venv-path))
             t)))))

(add-hook 'projectile-after-switch-project-hook #'pyvenv-autoload)

;;; project.el ends here
