
;;helm setting for myself
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/helm"))

(require 'helm)
(require 'helm-config)
(helm-mode 1)

(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;;(global-set-key (kbd "M-x") 'helm-M-x)x

;;set for global
;;(setenv "PATH" (concat "/usr/local/bin/global:" (getenv "PATH")))

(provide 'helm-setting)
