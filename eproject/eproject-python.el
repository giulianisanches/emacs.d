(define-project-type python (generic)
  (look-for "__init__.py")
  :relevant-files ("\\.py$")
  :mail-file "__init__.py")

(provide 'eproject-python)
