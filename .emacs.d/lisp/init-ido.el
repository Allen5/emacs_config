
;;开启ido模式
(require 'ido)
(ido-mode t)
(ido-everywhere t)

;;C-f 打开文件时转换为常态
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

(when (maybe-require-package 'ido-ubiquitous)
  (ido-ubiquitous-mode t))

;;使用smex处理 M-x
(when (maybe-require-package 'smex)
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
  (global-set-key [remap execute-extended-command] 'smex))

(require-package 'idomenu)

(setq ido-default-buffer-method 'selected-window)

;;使用 [up] 键打开上次使用命令
(add-hook 'ido-setup-hook (lambda () (define-key ido-completion-map [up] 'previous-history-element)))


(provide 'init-ido)
