(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "GOROOT")

(add-to-list 'exec-path "/home/giuliani/dev/Go/bin")

(defun custom-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")

  (add-hook 'before-save-hook 'gofmt-before-save)

  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))

  ; Go oracle
  (load-file "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")

  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  (local-set-key (kbd "C-c i") 'go-goto-imports))

(defun auto-complete-for-go ()
  (auto-complete-mode 1))

(with-eval-after-load 'go-mode
   (require 'go-autocomplete))

(add-hook 'go-mode-hook 'auto-complete-for-go)
(add-hook 'go-mode-hook 'custom-go-mode-hook)
