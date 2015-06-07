
;;helm setting for myself
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/helm"))
(require 'helm-config)

(global-set-key [(control x, control b)] 'helm-buffer-lists)

(provide 'helm-setting)
