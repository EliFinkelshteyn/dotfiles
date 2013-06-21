(delete-trailing-whitespace)
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/php-mode")
(add-to-list 'load-path "~/.emacs.d/vendor/js2-mode")
(add-to-list 'load-path "~/.emacs.d/vendor/pig-mode")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pig$" . pig-mode))
(require 'php-mode)
(require 'pig-mode)
`(require 'color-theme-zenburn)`
`(color-theme-zenburn)`
(setq scroll-step            1
      scroll-conservatively  10000)
(setq column-number-mode t)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
