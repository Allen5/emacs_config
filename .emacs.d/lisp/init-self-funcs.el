
;;加载自定义函数设置
(add-to-list 'load-path (expand-file-name "lisp/funcs" user-emacs-directory))

;;重新加载文件
(require 'self-reload-file)

(provide 'init-self-funcs)
