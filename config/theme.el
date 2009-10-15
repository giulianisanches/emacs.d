(require 'color-theme)
(setq color-theme-is-global t)
(load "themes/color-theme-tango")
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-tango)))