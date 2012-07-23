(delete-trailing-whitespace)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'color-theme)
    (color-theme-initialize)
    (color-theme-oswald)
(setq scroll-step            1
      scroll-conservatively  10000)