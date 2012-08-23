(require 'plsql)
(require 'sqlplus)

(setq auto-mode-alist
      (append
       '(("\\.\\(p\\(?:k[bg]\\|ls\\)\\)\\'" . plsql-mode))
       auto-mode-alist))

(setq sqlplus-command "C:/Users/Giuliani/Tools/SQLPlus/sqlplus.exe")
(setq sqlplus-history-dir "C:/Temp/SQLPlusHistory")
