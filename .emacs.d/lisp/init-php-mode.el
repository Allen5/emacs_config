
;;配置php-mode
(load "~/.emacs.d/elpa/mode/php-mode.el")
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
