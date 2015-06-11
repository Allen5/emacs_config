
;;加载自定义函数设置
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/funcs"))

;;重新加载文件
(require 'self-reload-file)
