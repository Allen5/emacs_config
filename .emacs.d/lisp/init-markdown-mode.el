
;;配置makrdown-mode
(load "~/.emacs.d/elpa/mode/markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
