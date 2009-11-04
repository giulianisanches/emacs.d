(require 'color-theme)
(setq color-theme-is-global t)
(load "color-theme-redpill")
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-redpill)))