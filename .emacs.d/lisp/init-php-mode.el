
;;配置php-mode
(load "~/.emacs.d/elpa/mode/php-mode.el")
(add-to-list 'auto-mode-alist '("\\.php[56]?\\'\\|\\.phtml\\'" . php-mode))

;;配置ac-php，php代码自动完成
