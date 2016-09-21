;;; 配置调优 speedbar
(require-package 'sr-speedbar)
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 25)
(setq dframe-update-speed t)

;;; 默认显示当前buffer编程语言符合的文件，修改为显示所有文件
(setq speedbar-show-unknown-files t)

(provide 'init-speedbar)
