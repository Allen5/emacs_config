
;;加载helm, helm-ggtags
(require-package 'helm)

(require 'helm)
(require 'helm-config)

;;开启helm模式
(helm-mode 1)

;;开启窗口自适应
(helm-autoresize-mode 1)

(provide 'init-helm)
