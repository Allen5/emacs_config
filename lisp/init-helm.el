
;;加载helm
(require-package 'helm)
(require 'helm)
(require 'helm-config)

;;开启helm模式
(helm-mode 1)

;;开启窗口自适应
(helm-autoresize-mode 1)

;;TODO: 快捷键绑定helm-find-files

(provide 'init-helm)
