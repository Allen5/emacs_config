
;; 设定smex
(require-package 'smex)
(require 'smex)
(smex-initialize)

;; 快捷键绑定
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'init-smex)
