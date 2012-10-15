(require 'tramp)
(if (eq system-type 'windows-nt)
    (setq tramp-default-method "plink")
  (setq tramp-default-method "sftp"))

(setq tramp-auto-save-directory temporary-file-directory)
