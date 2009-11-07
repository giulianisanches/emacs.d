;; Shift the selected region right if distance is postive, left if
;; negative

(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-right ()
  (interactive)
  (shift-region 1))

(defun shift-left ()
  (interactive)
  (shift-region -1))

(defun trac-wiki-auto-mode-function ()
  (if (and (eq major-mode 'text-mode)
           (member (file-name-extension (buffer-file-name))
                   '("txt" "wiki"))
           (re-search-forward "^=+ [^=\n]+ =+\\s *$" nil t))
      (trac-wiki-mode)))