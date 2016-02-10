(require 'twittering-mode)

(setq twittering-use-master-password t
      twittering-timer-interval 300
      twittering-url-show-status nil
      twittering-icon-mode nil
      twittering-private-info-file "~/Google Drive/Keys/twitter.gpg"
      twittering-initial-timeline-spec-string
      '(":home" ":replies" ":direct_messages")
      twittering-status-format "%s (%S)\n%FILL[ ]{%T}\n %FACE[glyphless-char]{%@ from %f%L%r%R}\n")


(add-hook 'twittering-mode-hook
          (lambda ()
            (set-face-attribute 'twittering-username-face nil :underline nil)))

;;(setq twittering-tinyurl-service 'bit.ly)
;;(setq twittering-bitly-login "YOURbitlyUsername")
;;(setq twittering-bitly-api-key "YOURbitlyAPIkey")
