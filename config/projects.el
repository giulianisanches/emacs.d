(define-project-type python (generic)
  (look-for "__init__.py")
  :relevant-files ("\\.py$"))

(define-project-type clojure (generic)
  (look-for "project.clj")
  :relevant-files ("\\.clj$"))
