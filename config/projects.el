(define-project-type perl (generic)
  (or (look-for "Makefile.PL") (look-for "Build.PL"))
  :relevant-files ("\\.pm$" "\\.t$" "\\.pl$" "\\.PL$" "\\.tt2?$"))