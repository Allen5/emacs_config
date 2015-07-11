
;;加载helm
(add-to-list 'load-path (expand-file-name "elpa/plugins/helm" user-emacs-directory))
(require 'helm)
(require 'helm-config)

;;开启helm模式
(helm-mode 1)

;;开启窗口自适应
(helm-autoresize-mode 1)

;;开启各个状态下的fuzzy matching
;;(helm-recentf-fuzzy-match 1)
;;(helm-buffers-fuzzy-matching 1)
;;(helm-imenu-fuzzy-match 1)
;;(helm-lisp-fuzzy-completion 1)

(provide 'init-helm)
