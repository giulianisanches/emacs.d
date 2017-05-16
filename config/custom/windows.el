(set-face-attribute 'default nil :font "Consolas-11")
(server-start)
(if (not (package-installed-p 'cygwin-mount))
    (package-install 'cygwin-mount))
(custom-set-variables
 '(cygwin-root-directory "D:/Tools/Cygwin")
 '(cygwin-mount-cygwin-bin-directory "D:/Tools/Cygwin/bin"))
(require 'setup-cygwin)
