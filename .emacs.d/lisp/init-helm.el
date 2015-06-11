
;;加载helm
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/plugins/helm"))

(require 'helm)
(require 'helm-config)

;;开启helm模式
(helm-mode 1)
